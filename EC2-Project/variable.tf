# variables.tf
# This file defines input variables for the configuration.

variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "ap-south-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
 
variable "subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance (Amazon Linux 2 in us-east-1)"
  type        = string
  default     = "ami-02d26659fd82cf299"  # Replace with a valid AMI ID for your region
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
  default     = "keyg"  # Create this in AWS console first
}

variable "instance_name" {
  description = "The name tag for the EC2 instance"
  type        = string
  default     = "my-ec2-instance"
}