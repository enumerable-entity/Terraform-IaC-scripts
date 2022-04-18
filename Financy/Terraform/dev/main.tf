#==============================
# Author: Enumerable-entity 
# Writed for be under Free Tier usage on AWS

module "aws_network" {
  source                       = "../modules/network"
  environment                  = var.environment
  vpc_name                     = var.vpc_name
  vpc_cidr_block               = var.vpc_cidr_block
  vpc_instance_tenancy         = var.vpc_instance_tenancy
  vpc_enable_dns_support       = var.vpc_enable_dns_support
  vpc_enable_dns_hostnames     = var.vpc_enable_dns_hostnames
  internet_gateway_name        = var.internet_gateway_name
  subnets_cidr_list            = var.subnets_cidr_list
  availability_zones_list      = data.aws_availability_zones.available_zones.names # one subnet per AZ
  public_allowed_port_list_map = var.public_allowed_port_list_map
  admin_allowed_port_list_map  = var.admin_allowed_port_list_map
  admin_ip_cidr                = var.admin_ip_cidr
  project_name                 = var.project_name
}

module "aws_instance" {
  source       = "../modules/instance"
  environment  = var.environment
  project_name = var.project_name
}

data "aws_availability_zones" "available_zones" {
  state = "available"
}

data "aws_ami" "ubuntu_server_ami" {
  owners = ["099720109477"]
  filter {
    name = "name"
    #free tier Ubuntu image
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-20211129"]
  }
}