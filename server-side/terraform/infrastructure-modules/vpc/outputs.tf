output "vpc_id" {
  description = "VPC ID."
  value       = module.vpc.vpc_id
}

output "dns_zone_private" {
  description = "Private DNS zone ID."
  value       = module.dns_private.dns_zone
}

output "public_subnets" {
  description = "List of public subnets."
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "List of private subnets."
  value       = module.vpc.private_subnets
}