
resource "aws_instance" "tomcat" {
  ami             = "ami-0cff7528ff583bf9a"
  instance_type   = "t2.micro"
  key_name        = "DevOps2023"
  security_groups = ["launch-wizard-2"]
  user_data = file("tomcat.sh")

  tags = {
    Name = "Jenkins-tomcat"
  }
}
 

