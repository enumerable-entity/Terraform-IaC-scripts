variable "environment" {
    type = string
    description = "Environment : dev, prod, stage etc"
}
variable "vpc_cidr_block" {
    type = string
    description = "CIDR block for created VPC"
}
variable "vpc_instance_tenancy" {
    type = string
    description = "A tenancy option for instances launched into the VPC"
}
variable "vpc_name" {
    type = string
    description = "VPC name"
}
variable "vpc_enable_dns_support" {
  type = bool
  description = "A boolean flag to enable/disable DNS support in the VPC"
}
variable "vpc_enable_dns_hostnames" {
  type = bool
  description = " A boolean flag to enable/disable DNS hostnames in the VPC"
}