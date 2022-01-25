variable "vpc-cidr" {
  default          = "10.0.0.0/16"
  description      = "vpc cidr_block"
  type             = string
}

variable "public-subnet1-cidr" {
  default          = "10.0.1.0/24"
  description      = "public-subnet1-cidr"
  type             = string
}

variable "public-subnet2-cidr" {
  default          = "10.0.2.0/24"
  description      = "public-subnet2-cidr"
  type             = string
}

#variable "aws_creds" {
#  access_key  = "AKIATMFLBAZEX6X66RXQ"
#  secret_key  = "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"
#}