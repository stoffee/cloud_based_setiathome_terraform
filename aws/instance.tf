resource "aws_instance" "demo" {
 ami = "ami-02c8040256f30fb45"

   instance_type = "g4dn.xlarge"

  key_name = "${aws_key_pair.env0-key-pair.key_name}"

  tags = {
    Name = "random_pet.server.id"
    #uncomment this for working, comment out for sentinel policy trigger
    Owner = "chrisd"
    TTL   = "24hrs"
  }
}