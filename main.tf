provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "ExampleInstance"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
  acl    = "private"
}

output "instance_id" {
  value = aws_instance.example.id
}

output "bucket_arn" {
  value = aws_s3_bucket.example.arn
}