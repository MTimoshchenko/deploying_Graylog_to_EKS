variable "cluster_name" {
  type        = string
  description = "Cluster name."
}

variable "eip_name" {
  type        = string
  description = "Name of EIP."
}

variable "eip_count" {
  type        = number
  description = "Number of EIP to create."
}