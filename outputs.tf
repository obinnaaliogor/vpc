

#VPC Outputs

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.vpc.id
}

output "public_subnet_az1" {
  description = "public subnet az1 ID"
  value       = aws_subnet.public_subnet_az1.id
}

output "public_subnet_az2" {
  description = "public subnet az2 ID"
  value       = aws_subnet.public_subnet_az2.id
}

output "private_app_subnet_az1" {
  description = "private app subnet az1 ID"
  value       = aws_subnet.private_app_subnet_az1.id
}

output "private_app_subnet_az2" {
  description = "private app subnet az2 ID"
  value       = aws_subnet.private_app_subnet_az2.id
}

output "private_data_subnet_az1" {
  description = "private data subnet az1 ID"
  value       = aws_subnet.private_data_subnet_az1.id
}

output "private_data_subnet_az2" {
  description = "private data subnet az2 ID"
  value       = aws_subnet.private_data_subnet_az2.id
}

#Security Group Output

output "alb_security_group" {
  description = "alb security group"
  value       = aws_security_group.alb_security_group.id
}

output "bastion_security_group" {
  description = "bastion security group"
  value       = aws_security_group.bastion_security_group.id
}

