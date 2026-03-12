variable "project_name" {
  description = "Short name used to prefix all resource names."
  type        = string
  default     = "my-project"
}

variable "aws_region" {
  description = "AWS region where all resources will be created."
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "IP range for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "IP range for the public subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "EC2 instance size. t3.micro is free-tier eligible."
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance. Region specific."
  type        = string
  default     = "ami-0c02fb55956c7d316"
}
