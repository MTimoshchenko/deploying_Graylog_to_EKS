# Module: vpc

`vpc` is a terraform module that creates VPC, subnets, configures route tables, nat & internet gateways, private DNS zone, etc.
Pre-configured `terraform-aws-modules/vpc/aws` is used here. For more info visit the source [repo](https://github.com/terraform-aws-modules/terraform-aws-vpc).

# Module structure

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| azs | Availability zones in which to create the subnets. | `list(string)` | n/a | yes |
| cluster\_name | Cluster name. | `string` | n/a | yes |
| enable\_dns\_hostnames | The choice to enable dns hostnames. | `bool` | `true` | no |
| enable\_dns\_support | The choice to enable dns support. | `bool` | `true` | no |
| enable\_nat\_gateway | The choice to enable nat gateway. | `bool` | `true` | no |
| enable\_s3\_endpoint | The choice to enable s3 endpoint. | `bool` | `true` | no |
| instance\_tenancy | Instance tenancy. | `string` | `"default"` | no |
| internal\_dns\_zone | Internal dns zone name. | `string` | n/a | yes |
| manage\_default\_vpc | The choice to manage default vpc. | `bool` | `false` | no |
| reuse\_nat\_ips | The choice to reuse nat ips. | `bool` | `true` | no |
| vpc\_cidr | VPC IP CIDR map. | `string` | n/a | yes |
| vpc\_name | VPC name. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| dns\_zone\_private | Private DNS zone ID. |
| private\_subnets | List of private subnets. |
| public\_subnets | List of public subnets. |
| vpc\_id | VPC ID. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
