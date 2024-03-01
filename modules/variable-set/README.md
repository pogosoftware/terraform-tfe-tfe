<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.7.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.52 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | ~> 0.52 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_variable.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable_set.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable_set) | resource |
| [tfe_organization.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The variable set description | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of variable set | `string` | n/a | yes |
| <a name="input_variables"></a> [variables](#input\_variables) | The variables assigned to the variable set | <pre>map(object({<br>    value       = string<br>    category    = string<br>    description = optional(string)<br>  }))</pre> | n/a | yes |
| <a name="input_workspace_ids"></a> [workspace\_ids](#input\_workspace\_ids) | The ID's of workspace to attach variable set | `set(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of variable set |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->