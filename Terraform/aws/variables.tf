variable "region" {
    type = "string"
  default = "us-east-2"
}
variable "secretkey" {
    type = "string"
}
variable "accesskey" {
    type = "string"
}
variable "ami" {
    type = "string"
  default = "ami-05c1fa8df71875112"
}
variable "az"{
    type = "string"
    default= "us-east-2a"
}
variable "key" {
    type = "string"
  default = "ven"
}
variable "instance_type" {
  type = "string"
  default = "t2.micro"
}
variable "sshusername" {
    type = "string"
  default = "ubuntu"
}
variable "sshkeypath" {
  default = "./ven.pem"
}


