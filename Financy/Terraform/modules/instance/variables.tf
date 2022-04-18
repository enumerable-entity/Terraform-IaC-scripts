variable "environment" {
    type = string
    description = "Environment : dev, prod, stage etc"
}
variable "project_name" {
      type = string
    description = "Project name"
}
variable "instance_ami_id" {
  type = string
  description = "Amazon Machine Image for server to run"
}
variable "instance_type" {
  type = string
  description = "Amazon instance size (t2.micro for Free tier eligible)"
}
variable "instances_count" {
  type = number
  description = "Count of instances to be created"
}
variable "instance_security_groups" {
  type = list
  description = "List of security groups to be attached to the instance"
}
variable "instance_az" {
  type = string
  description = "Instance AZ where instance will be created"
}