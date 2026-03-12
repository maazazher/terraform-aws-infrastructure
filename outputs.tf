output "vpc_id" {
value = module.vpc.vpc_id
}
output "ec2_public_ip" {
description = "SSH into your instance using this IP"
value = module.ec2.public_ip
}
output "s3_bucket_name" {
value = module.s3.bucket_name
}