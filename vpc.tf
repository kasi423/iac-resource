resource "aws_vpc" "main" {
  cidr_block           = "${var.vpc-cidr}"
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  tags = {
    Name = "demo-vpc"
    Purpose = "Jenkins Demo"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "IGW"
  }
}

resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "${var.public-subnet1-cidr}"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "Public-subnet-1"
  }
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "${var.public-subnet2-cidr}"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "Public-subnet-2"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "Pub_RT"
  }
}

resource "aws_route_table_association" "public_route_table_subnet1_association" {
   subnet_id      = aws_subnet.public-subnet-1.id
   route_table_id = aws_route_table.public_route_table.id

}


resource "aws_route_table_association" "public_route_table_subnet2_association" {
   subnet_id      = aws_subnet.public-subnet-2.id
   route_table_id = aws_route_table.public_route_table.id

}