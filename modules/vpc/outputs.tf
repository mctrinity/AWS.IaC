# VPC ID
output "vpc_id" {
  value       = aws_vpc.main.id
  description = "The ID of the VPC"
}

# Public Subnet IDs
output "public_subnets" {
  value       = aws_subnet.public.*.id
  description = "The IDs of the public subnets"
}

# Private Subnet IDs (if applicable)
output "private_subnets" {
  value       = aws_subnet.private.*.id
  description = "The IDs of the private subnets"
}

# Route Table IDs (optional, if routing is relevant)
output "public_route_table_id" {
  value       = aws_route_table.public.id
  description = "The ID of the public route table"
}

# Internet Gateway ID
output "internet_gateway_id" {
  value       = aws_internet_gateway.main.id
  description = "The ID of the Internet Gateway"
}
