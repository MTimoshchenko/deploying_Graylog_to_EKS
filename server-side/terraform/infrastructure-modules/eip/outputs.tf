output "eip_ids" {
  description = "IDs of created EIPs."
  value       = aws_eip.this.*.id
}
