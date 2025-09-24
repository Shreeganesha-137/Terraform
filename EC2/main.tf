terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "terraform_auto" {
  ami          = "ami-02d26659fd82cf299"
  instance_type = "t2.micro"
  
  tags = {
   Name = "terraform"
  }
}