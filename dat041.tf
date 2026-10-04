#creation of s3 bucket
provider "aws" {
  region = "us-east-1"
}

--------
variable "my_sanath"{
    type = string
}

my_sanath = "sanath_bucket_2002"


resource "aws_s3_bucket" "sanath_bucket"{
    bucket = "sanath-bucket-001100"
}