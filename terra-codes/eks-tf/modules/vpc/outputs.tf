output "vpc_id" {
  value = aws_vpc.this.id
}

output "subnet_ids" {
  value = aws_subnet.this[*].id
}
output "routeTable-id" {
  value = aws_route_table.this.id
}
