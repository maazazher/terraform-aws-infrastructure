module "vpc" {
  source             = "./modules/vpc"
  project_name       = var.project_name
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  aws_region         = var.aws_region
}

module "ec2" {
  source        = "./modules/ec2"
  project_name  = var.project_name
  subnet_id     = module.vpc.public_subnet_id
  vpc_id        = module.vpc.vpc_id
  instance_type = var.instance_type
  ami_id        = var.ami_id
}

module "s3" {
  source       = "./modules/s3"
  project_name = var.project_name
  aws_region   = var.aws_region
}