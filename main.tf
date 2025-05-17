terraform {
required_version= "~> 1.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
 
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
access_key = var.access_key
secrect_key = var.secret_key
}
resource "aws_instance" "myec2" {
  ami                     = "ami-084568db4383264d4"
  instance_type           = "t2.micro"
}
