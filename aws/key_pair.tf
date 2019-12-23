resource "tls_private_key" "private_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "env0-key-pair" {
  key_name   = "env0-key-${random_uuid.uuid.result}"
  public_key = "${tls_private_key.private_key.public_key_openssh}"
}