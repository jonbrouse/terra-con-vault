variable "aws_region" {
  description = "The AWS region to create resources in."
  default = "us-east-1"
}

variable "aws_amis" {
  default = {
    us-east-1 =  "ami-2f73014a"
  }
}
