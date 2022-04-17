region      = "eu-central-1"
environment = "dev"

# AWS Virtual Private Cloud vars
vpc_name                  = "enumerable-entity"
vpc_cidr_block            = "10.10.0.0/26"
vpc_instance_tenancy      = "default"
vpc_enable_dns_support    = true
vpc_enable_dns_hostnames  = false
internet_gateway_name     = "enumerable-entity"
private_subnets_cidr_list = ["10.10.0.0/28"]