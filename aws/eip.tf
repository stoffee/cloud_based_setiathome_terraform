resource "aws_eip" "demo-elastic-ip" {
  instance = "${aws_instance.demo.id}"
  vpc      = true
}