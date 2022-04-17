output "vpc_id" {
    description = "VPC created with id: "
  value = aws_vpc.financy_vpc.id
}