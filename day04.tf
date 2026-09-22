provider "aws" {
  region = "us-east-1"
}
variable "instance_count" {
  description = "count for instance"
  type = number
  default = 2

}
variable "instance_type" {
  description = "*"
  type = string
  default = "t3.micro"
}
variable "instance_ami" {
  description = "ami"
  type = string
  default = "ami-0354c98ae10b02961"

}
variable "instance_name" {
  description = "instance name"
  type = string
  default = "sanath-server"
}

resource "aws_instance" "instance-1" {
  count = var.instance_count
  ami = var.instance_ami
  instance_type = var.instance_type
  tags = {
    name = var.instance_name
  }
}


-------
