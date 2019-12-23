output "tls_private_key" {
  value = "${tls_private_key.private_key.private_key_pem}"
  description = "The private key to be used in order to ssh to the ec2 instance"
}

output "instance_public_ip" {
  value = "${aws_eip.demo-elastic-ip.public_ip}"
  description = "The public IP of your demo instance"
}


output "account_id" {
  value = "${data.aws_caller_identity.current.account_id}"
}

output "caller_arn" {
  value = "${data.aws_caller_identity.current.arn}"
}

output "caller_user" {
  value = "${data.aws_caller_identity.current.user_id}"
}

