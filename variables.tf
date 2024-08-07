variable "region" {
  description = "The AWS region to create resources in"
  default     = "us-west-2"
}

variable "ami" {
  description = "The AMI ID for the EC2 instance"
  default     = "ami-0323ead22d6752894"
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  default     = "t2.micro"
}

