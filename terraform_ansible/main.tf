resource "aws_instance" "manage_ansible" {
  ami             = "ami-0889a44b331db0194"
  instance_type   = "t2.micro"
  key_name = "DevOps2023"
  security_groups = ["launch-wizard-2"]
  user_data = file("ansible.sh")

  tags = {
    Name = "manage_ansible"
  }
}

resource "aws_instance" "controlnode-ansible" {
  ami             = "ami-0889a44b331db0194"
  instance_type   = "t2.micro"
  key_name = "DevOps2023"
  security_groups = ["launch-wizard-2"]
  user_data = file("ansible.sh")

  tags = {
    Name = "controlnode-ansible"
  }
}