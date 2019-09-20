provider "aws" {
   region       = "${var.region}"
   access_key   = "${var.accesskey}"
   secret_key   = "${var.secretkey}"
}
resource "aws_vpc" "tomvpc" {
    cidr_block  = "192.168.0.0/16"
    enable_dns_hostnames    = true
    tags = {
        Name = "tomnetwork"
           }
}
resource "aws_internet_gateway" "tomigw" {
    vpc_id = "${aws_vpc.tomvpc.id}"
    tags = {
        name = "iqw_tom"
    }
}
resource "aws_subnet" "tompublic" {
    cidr_block = "192.168.0.0/24"
    vpc_id = "${aws_vpc.tomvpc.id}"
    availability_zone = "us-east-2a"
    tags =  {
        name = "websubnet"
    }
}
resource "aws_subnet" "tomprivate" {
    cidr_block = "192.168.1.0/24"
    vpc_id = "${aws_vpc.tomvpc.id}"
    availability_zone = "us-east-2a"
    tags = {
        name = "appsubnet"
    }
}
resource "aws_route_table" "tomroutetable" {
  vpc_id = "${aws_vpc.tomvpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.tomigw.id}"
  }
}  
resource "aws_route_table_association" "tomrouteassoc" {
  subnet_id      = "${aws_subnet.tompublic.id}"
  route_table_id = "${aws_route_table.tomroutetable.id}"
}
resource "aws_security_group" "tomsecgroup" {
    description     = "created from terraform"
    vpc_id          = "${aws_vpc.tomvpc.id}"
    ingress{
        cidr_blocks = ["0.0.0.0/0"]
        protocol    = "-1"
        from_port   = "0"
        to_port     = "0"
    }
    egress{
        cidr_blocks = ["0.0.0.0/0"]
        protocol    = "-1"
        from_port   = "0"
        to_port     = "0"
    }
    tags = {
        Name = "secgroup"
    }
}

resource "aws_instance" "tom-pub" {
    ami = "${var.ami}"
    availability_zone = "${var.az}"
    instance_type = "${var.instance_type}"
    key_name = "${var.key}"
    security_groups =  [ "${aws_security_group.tomsecgroup.id}" ]
    subnet_id = "${aws_subnet.tompublic.id}"
    associate_public_ip_address = true
    tags = {
        name = "webserver"
    }
    connection{
    user        = "${var.sshusername}"
    private_key = "${file(var.sshkeypath)}"
    host        = "${aws_instance.tom-pub.public_ip}" 
    }    
    provisioner "remote-exec" {
        inline  = [
            "sudo apt-get update",
            "sudo apt-get install nginx"     
        ]
    }
}
resource "aws_instance" "tom-pri" {
    ami = "${var.ami}"
    availability_zone = "${var.az}"
    instance_type = "${var.instance_type}"
    key_name = "${var.key}"
    security_groups = [ "${aws_security_group.tomsecgroup.id}" ]
    subnet_id = "${aws_subnet.tomprivate.id}" 
    tags = {
        name = "appserver"
    }
    connection{
    user        = "${var.sshusername}"
    private_key = "${file(var.sshkeypath)}"
    host        = "${aws_instance.tom-pri.public_ip}" 
    }    
    provisioner "remote-exec" {
        inline  = [
            "sudo apt-get update",
            "sudo apt-get install openjdk-8-jdk -y",
            "sudo apt-get install tomcat8 -y"
        ]
    }
   
}
#terrafor apply . -var "accesskey=key" -var "secretkey=key" 
#terraform validate -var 'accesskey=AKIAYRTEE6YZDMRUI7Q4' -var 'secretkey=6fktExhN3Yq8jXORgz29y7w8lQ9FvgciIkJbQZsl' .
#terraform apply -var 'accesskey=<your access key>' -var 'secretkey=<yoursecretkey>' .
