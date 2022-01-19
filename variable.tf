variable "vpc-cidr" {
  cidr_block       = "10.0.0.0/16"
  discription      = "vpc cidr_block"
  type             = string
}

variable "public-subnet1-cidr" {
  cidr_block       = "10.0.1.0/24"
  discription      = "public-subnet1-cidr"
  type             = string
}

variable "public-subnet2-cidr" {
  cidr_block       = "10.0.2.0/24"
  discription      = "public-subnet2-cidr"
  type             = string
}
