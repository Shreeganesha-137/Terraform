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
  byte_length = 4
}
resource "aws_s3_bucket" "S3_buck" {
  bucket = "my-unique-bucket-name-${random_id.suffix.hex}"

}
#without random id can also create bucket but it should be unique name
# resource "aws_s3_bucket" "S3_buck" {
#bucket = "my-unique-bucket-name-12345"
# }

#store file in s3 bucket
resource "aws_s3_object" "S3_obj" {
  bucket = aws_s3_bucket.S3_buck.id
  key    = "myfile.txt"
  source = "myfile.txt"
  etag   = filemd5("myfile.txt")
}