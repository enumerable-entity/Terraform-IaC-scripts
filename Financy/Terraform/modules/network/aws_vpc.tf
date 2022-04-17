# Module for managing Virtual Private Cloud  on AWS

resource "aws_vpc" "financy_vpc" {
    cidr_block = var.vpc_cidr_block
    instance_tenancy = var.vpc_instance_tenancy
    enable_dns_hostnames = var.vpc_enable_dns_hostnames
    enable_dns_support = var.vpc_enable_dns_support
    tags = {
      "Name" = "${var.vpc_name}-vpc"
      "Environment" = var.environment
    }
}