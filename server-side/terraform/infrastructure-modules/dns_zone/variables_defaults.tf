# Note: vpc_id is required only if is_private is set to true.

variable "vpc_id" {
  type        = string
  description = "VPC ID to attach to."
  default     = ""
}