resource "aws_instance" "cornerstone" {
  ami           = "ami-02396cdd13e9a1257" # us-west-1
  instance_type = "t2.micro"
  user_data = file("docker.sh")
  security_groups = ["default"]
}






