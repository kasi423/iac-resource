resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "demo-vpc"
    Purpose = "Jenkins Demo"
  }
}
resource "aws_default_subnet" "default_az1" {
  availability_zone = "us-east-1a"

  tags = {
    Name = "Default subnet for us-east-1a"
  }
}
resource "aws_default_route_table" "main" {
  vpc_id = "vpc-04d19cda525279114"
  route {
    cidr_block = "10.0.1.0/24"
    gateway_id = aws_internet_gateway.aws_vpc.id
  }
  tags = {
    Name = "Pub_RT"
  }
}
