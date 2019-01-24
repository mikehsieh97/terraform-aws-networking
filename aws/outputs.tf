# ---------------------------------------------------------------------------------------------------------------------
# VPC
# ---------------------------------------------------------------------------------------------------------------------
output "vpc_id" {
  description = "The ID of the VPC"
  value       = "${aws_vpc.vpc.id}"
}
output "vpc_cidr_block"{
  description = "The CIDR block of the VPC"
  value       = "${aws_vpc.vpc.cidr_block}"
}

# ---------------------------------------------------------------------------------------------------------------------
# AWS Internet Gateway
# ---------------------------------------------------------------------------------------------------------------------
output "internet_gateway_id" {
  value = "${aws_internet_gateway.internet_gw.id}"
}

# ---------------------------------------------------------------------------------------------------------------------
# AWS Subnets - Public
# ---------------------------------------------------------------------------------------------------------------------
output "public_subnets_ids" {
  value = [ "${aws_subnet.public_subnets.*.id}"]
}
output "nat_gw" {
  value = "${aws_nat_gateway.nat_gw.*.id}"
}

# ---------------------------------------------------------------------------------------------------------------------
# AWS Subnets - Private
# ---------------------------------------------------------------------------------------------------------------------
output "private_subnets_ids" {
  value = ["${aws_subnet.private_subnets.*.id}"]
}