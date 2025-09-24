terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "random_id" "suffix" {
  byte_length = 1
}

resource "aws_s3_bucket" "website_bucket" {
  bucket = "my-static-web-bucket-${random_id.suffix.hex}"
  
  website {
    index_document = "index.html"
    error_document = "404.html"
  }
}

resource "aws_s3_object" "index" {
  bucket       = aws_s3_bucket.website_bucket.id
  key          = "index.html"
  source       = "index.html"
  content_type = "text/html" #if it not add it will download file instead of url open
}

resource "aws_s3_object" "style" {
  bucket       = aws_s3_bucket.website_bucket.id
  key          = "style.css"
  source       = "style.css"
  content_type = "text/css"
}