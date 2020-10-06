output "dns_zone" {
  description = "DNS zone name."
  value       = aws_route53_zone.dns.name
}