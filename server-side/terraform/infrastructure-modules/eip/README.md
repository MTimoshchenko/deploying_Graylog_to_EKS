# Module: eip

`eip` is a terraform module that creates a list of Elastic IP addresses of given number.

# Module structure

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cluster\_name | Cluster name. | `string` | n/a | yes |
| eip\_count | Number of EIP to create. | `number` | n/a | yes |
| eip\_name | Name of EIP. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| eip\_ids | IDs of created EIPs. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->