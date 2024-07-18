<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 1.9 |
| hcp | 0.94.1 |
| tfe | 0.56.0 |

## Providers

| Name | Version |
|------|---------|
| hcp | 0.94.1 |
| tfe | 0.56.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | The variable set description | `string` | `""` | no |
| name | The name of variable set | `string` | n/a | yes |
| variables | The variables assigned to the variable set | <pre>map(object({<br>    value       = string<br>    category    = string<br>    sensitive   = optional(bool)<br>    description = optional(string)<br>  }))</pre> | n/a | yes |
| workspace\_ids | The ID's of workspace to attach variable set | `set(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of variable set |

<!--- END_TF_DOCS --->
