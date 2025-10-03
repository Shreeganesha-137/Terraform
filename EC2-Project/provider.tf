# provider.tf
# This file configures the AWS provider.

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"  # Use a recent version; adjust as needed
    }
  }
}

provider "aws" {
  region = var.aws_region  # Use variable for region

  # Credentials should be set via environment variables or AWS CLI profile
  # Avoid hardcoding:
  # access_key = "your-access-key"
  # secret_key = "your-secret-key"
}