<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 1.9 |
| hcp | 0.99.0 |
| tfe | 0.60.1 |

## Providers

| Name | Version |
|------|---------|
| hcp | 0.99.0 |
| tfe | 0.60.1 |

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

<!-- BEGIN_TF_DOCS -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcp"></a> [hcp](#provider\_hcp) | 0.99.0 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.60.1 |

## Modules

No modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name of variable set | `string` | n/a | yes |
| <a name="input_variables"></a> [variables](#input\_variables) | The variables assigned to the variable set | <pre>map(object({<br/>    value       = string<br/>    category    = string<br/>    sensitive   = optional(bool)<br/>    description = optional(string)<br/>  }))</pre> | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | The variable set description | `string` | `""` | no |
| <a name="input_workspace_ids"></a> [workspace\_ids](#input\_workspace\_ids) | The ID's of workspace to attach variable set | `set(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of variable set |
<!-- END_TF_DOCS -->
