provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "ec2-instance" {
    ami = "ami-0b6d9d3d33ba97d99"
    instance_type = "t2.micro"
}

#
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "second"{
    ami = "ami-0b6d9d3d33ba97d99"
    instance_type = "t3.micro"
    count = 1
} 

resource "aws" {
  ami = ""
  instance_type = "t3.micro"
  key_name = ""
  security_groups =["defualt"]
}

tags = {
     
}