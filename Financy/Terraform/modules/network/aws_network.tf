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

resource "aws_internet_gateway" "financy_gateway" {
  depends_on = [aws_vpc.financy_vpc]
  vpc_id = aws_vpc.financy_vpc.id
  tags = {
      "Name" = "${var.internet_gateway_name}-gateway"
      "Environment" = var.environment
    }
}
resource "aws_subnet" "financy_main_subnet" {
  depends_on = [
    aws_vpc.financy_vpc,
    aws_internet_gateway.financy_gateway
  ]
  vpc_id = aws_vpc.financy_vpc.id
  count  = "${length(var.private_subnets_cidr_list)}"
  cidr_block = "${element(var.private_subnets_cidr_list, count.index)}"
  availability_zone = "${element(var.availability_zones_list,   count.index)}"
  map_public_ip_on_launch = false

    tags = {
      "Name" = "${var.environment}-${element(var.availability_zones_list, count.index)}-financy-subnet"
      "Environment" = var.environment
    }
}
