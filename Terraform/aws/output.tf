output "webserver-public-ip" {
  value = "${aws_instance.tom-pub.public_ip}"
}

output "appserver-private-ip" {
  value = "${aws_instance.tom-pri.private_ip}"
}
