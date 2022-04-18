region      = "eu-central-1"
environment = "dev"

# AWS Virtual Private Cloud vars
vpc_name                 = "enumerable-entity"
vpc_cidr_block           = "10.10.0.0/26"
vpc_instance_tenancy     = "default"
vpc_enable_dns_support   = true
vpc_enable_dns_hostnames = false
internet_gateway_name    = "enumerable-entity"
subnets_cidr_list        = ["10.10.0.0/28", "10.10.0.16/28", "10.10.0.32/28"] # 11 hosts available per subnet, ok
public_allowed_port_list_map = {
  "prod" = ["80", "443"]
  "dev"  = ["80", "443"]
}
admin_allowed_port_list_map = {
  "prod" = ["22"]
  "dev"  = ["8080", "3306", "22", ]
}
admin_ip_cidr = "91.150.0.0/16"
project_name = "financy"