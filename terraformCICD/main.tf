resource "aws_instance" "Docker-Terraform" {
  ami             = "ami-0889a44b331db0194"
  instance_type   = "t2.micro"
  key_name = "DevOps2023"
  security_groups = ["launch-wizard-2"]
  user_data = file("docker.sh")

  tags = {
    Name = "Docker-Terraform"
  }
}

resource "aws_instance" "Tomcat-terraform" {
  ami             = "ami-0889a44b331db0194"
  instance_type   = "t2.micro"
  key_name = "DevOps2023"
  security_groups = ["launch-wizard-2"]
  user_data = file("tomcat.sh")

  tags = {
    Name = "Tomcat-terraform"
  }
}