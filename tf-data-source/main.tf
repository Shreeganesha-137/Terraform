terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.14"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}


#take data source of latest ubuntu ami
data "aws_ami" "ubuntu" {
    most_recent = true
    
    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
    }
    
    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
    
    owners = ["099720109477"] # Canonical
    }

output "name" {
    value = data.aws_ami.ubuntu.id
}

data "aws_availability_zones" "name" {
    state = "available"
  
}
  


#security group
data "aws_security_group" "default" {
    name   = "default"
    vpc_id = data.aws_vpc.default.id
  }
  
  data "aws_vpc" "default" {
    default = true
  }


resource "aws_instance" "ubuntu_server" {
  ami                         = "ami-02d26659fd82cf299" # Ubuntu 22.04 LTS (Mumbai) #will be replaced by data source if you need
  instance_type               = "t2.micro"

}

output "instance_ip" {
    value = aws_instance.ubuntu_server.public_ip
}