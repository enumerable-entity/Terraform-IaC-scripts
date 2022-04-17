variable "region" {
  type        = string
  description = "This is the AWS region for whole project"
}
variable "environment" {
  type        = string
  description = "Environment : dev, prod, stage etc"
}

# AWS VPC  module settings
variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for created VPC"
}
variable "vpc_instance_tenancy" {
  type        = string
  description = "A tenancy option for instances launched into the VPC"
}
variable "vpc_name" {
  type        = string
  description = "VPC name"
}
variable "vpc_enable_dns_support" {
  type        = bool
  description = "A boolean flag to enable/disable DNS support in the VPC"
}
variable "vpc_enable_dns_hostnames" {
  type        = bool
  description = " A boolean flag to enable/disable DNS hostnames in the VPC"
}
variable "internet_gateway_name" {
  type        = string
  description = "Internet gateway for VPC for Internet access"
}
variable "private_subnets_cidr_list" {
  type        = list(any)
  description = "List of CIDR's for creating subnets"
}
