output "vpc_id" {
  value       = module.aws_network.vpc_id
  description = "VPC created with id: "
}

output "internet_gateway_id" {
  value       = module.aws_network.internet_gateway_id
  description = "Internet gateway created with id: "
}

output "ubuntu_ami_id" {
  value = module.aws_instance.ubuntu_ami_id
}
