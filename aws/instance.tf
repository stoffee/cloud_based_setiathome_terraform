resource "aws_instance" "demo" {
 ami = "ami-02c8040256f30fb45"

   instance_type = "t2.xlarge"
   #instance_type = "g4dn.xlarge"

  key_name = "${aws_key_pair.env0-key-pair.key_name}"

  tags = {
    #Name = "random_pet.server.id"
    Owner = "chrisd"
    TTL   = "24hrs"
  }
  user_data = data.template_file.cloud-init.rendered
}

data "template_file" "cloud-init" {
  template = file("cloud-init.tpl")

#  vars = {
#    vaultdb_username = var.vaultdb_username
#    vaultdb_password = var.vaultdb_password
#  }
}