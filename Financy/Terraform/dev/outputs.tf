output "vpc_id" {
  description = "VPC created with id: "
  value       = module.aws_vpc.vpc_id
}