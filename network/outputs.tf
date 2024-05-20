output "subnets" {
  value = aws_subnet.subnets
  sensitive = true
  description = "description"
}

output "vpc_id" {
  value = aws_vpc.main.id
  description = "description"
}

output "cidr_block" {
  value = aws_vpc.main.cidr_block
  description = "description"
}