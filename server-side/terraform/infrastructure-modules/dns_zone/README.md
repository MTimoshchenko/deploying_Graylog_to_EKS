# Module: dns_zone

`dns_zone` is a terraform module that creates a dns zone with a different type of access (private or public) depending on the settings.

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
| dns\_zone\_name | DNS zone name. | `string` | n/a | yes |
| is\_private | The choice to create a private or public DNS zone. | `bool` | n/a | yes |
| vpc\_id | VPC ID to attach to. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| dns\_zone | DNS zone name. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->