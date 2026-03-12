# Terraform AWS Infrastructure
A modular AWS infrastructure project built with Terraform as part of my Cloud/DevOps learning journey.

## What This Project Does
Provisions a complete AWS environment from scratch using Infrastructure as Code (IaC):

- VPC— isolated private network with public subnet, internet gateway and route table
- EC2 — t3.micro virtual machine inside the VPC with a security group
- S3 — private, versioned and encrypted storage bucket

## Project Structure
terraform-aws-project/
├── main.tf              # Wires all modules together
├── providers.tf         # AWS provider configuration
├── variables.tf         # Input variable declarations
├── outputs.tf           # Values printed after apply
├── terraform.tfvars     # Actual variable values
└── modules/
    ├── vpc/             # VPC, subnet, internet gateway, routes
    ├── ec2/             # Security group + EC2 instance
    └── s3/              # S3 bucket with versioning + encryption
