#==============================
# Author: Enumerable-entity 
# Writed for be under Free Tier usage on AWS

module "aws_network" {
  source                    = "../modules/network"
  environment               = var.environment
  vpc_name                  = var.vpc_name
  vpc_cidr_block            = var.vpc_cidr_block
  vpc_instance_tenancy      = var.vpc_instance_tenancy
  vpc_enable_dns_support    = var.vpc_enable_dns_support
  vpc_enable_dns_hostnames  = var.vpc_enable_dns_hostnames
  internet_gateway_name     = var.internet_gateway_name
  private_subnets_cidr_list = var.private_subnets_cidr_list
  availability_zones_list   = data.aws_availability_zones.available.names
}

data "aws_availability_zones" "available" {
  state = "available"
}
