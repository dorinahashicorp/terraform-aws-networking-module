output "internet_gateway_id" {
  value = aws_internet_gateway.gateway.id
}

output "public_route_table_id" {
  description = "The ID of the Public Route Table"
  value       = aws_route_table.public.id
}

output "private_route_table_id" {
  description = "The ID of the Private Route Table"
  value       = aws_route_table.private.id
}

output "public_route_table_association_id" {
  description = "The ID of the Public Route Table Association"
  value       = aws_route_table_association.public.id
}

output "private_route_table_association_id" {
  description = "The ID of the Private Route Table Association"
  value       = aws_route_table_association.private.id
}