#vpc iaac creation
#variable.tf
provider "aws" {
  region = "us-east-1"
}
variable "vpc_cidr" {
    description = "cidr block vpc"
    type = string
    default = "10.0.0.0/16"
}
variable "public_subnet_cidr" {
  description = "cidr block for subnet"
  type = string
  default = "10.0.1.0/24"
}
variable "private_subnet_cidr" {
  description = "cidr block for private subnet"
  type = string
  default = "10.0.2.0/24"
}

#main.tf
resource "aws_vpc" "sanath_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    name = "sanath-vpc"
  }
}
resource "aws_internet_gateway" "name_igw" {
  vpc_id = aws_vpc.sanath_vpc.id
  tags = {
    name = "sanath-igw"
  }
}

resource "aws_subnet" "name_public" {
  vpc_id = aws_vpc.sanath_vpc.id
  cidr_block = var.public_subnet_cidr
  map_public_ip_on_launch = true
  tags = {
    name = "sanath-public"
  }
}
resource "aws_subnet" "name_private" {
  vpc_id = aws_vpc.sanath_vpc.id
  cidr_block = var.private_subnet_cidr
  map_public_ip_on_launch = true
  tags = {
    name = "sanath-private"
  }
}
resource "aws_route_table" "name _rt{
  vpc_id = aws_vpc.sanath_vpc.id
  tags = {
    name = "santh-public-rt"
  }
}

resource "aws_route_table" "name _rt{
  vpc_id = aws_vpc.sanath_vpc.id
  tags={
    name = "santh-private_rt"
  }
}

resource ""