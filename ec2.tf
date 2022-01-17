resource "aws_instance" "myFirstInstance" {
  ami           = "ami-08e4e35cccc6189f4"
  key_name = "tower43"
  instance_type = "t2.micro"
  tags= {
    Name = "jenkins_instance"
  }
}
