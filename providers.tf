terraform {
required_version = ">= 1.6.0"
required_providers {
aws = {
source = "hashicorp/aws"
version = "~> 5.0" # use AWS provider v5.x
}
random = {
source = "hashicorp/random"
version = "~> 3.0" # used to generate unique S3 bucket name
}
}
}
provider "aws" {
region = var.aws_region # uses value from variables
default_tags {
tags = {
Project = var.project_name
ManagedBy = "Terraform"
}
}
}