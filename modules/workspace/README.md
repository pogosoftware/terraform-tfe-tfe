<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.7.0 |
| <a name="requirement_hcp"></a> [hcp](#requirement\_hcp) | ~> 0.83 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.52 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcp"></a> [hcp](#provider\_hcp) | ~> 0.83 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | ~> 0.52 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_variable.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_workspace.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_workspace_variable_set.hcp_cloud_workspace_hcp_credentials](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace_variable_set) | resource |
| [hcp_organization.this](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/data-sources/organization) | data source |
| [tfe_github_app_installation.gha_installation](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/github_app_installation) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_destroy_plan"></a> [allow\_destroy\_plan](#input\_allow\_destroy\_plan) | Determinate to allow destroy play or not. Defaults to `false` | `bool` | `false` | no |
| <a name="input_auto_apply"></a> [auto\_apply](#input\_auto\_apply) | Automatically apply changes when a Terraform plan is successful. If this workspace is linked to version control, a push to the default branch of the linked repository will trigger a plan and apply. Default to `false` | `bool` | `false` | no |
| <a name="input_auto_apply_run_trigger"></a> [auto\_apply\_run\_trigger](#input\_auto\_apply\_run\_trigger) | Run triggers create new plans whenever a specified source workspace completes an apply. This setting automatically applies these automatically created runs. Defaults to `false` | `bool` | `false` | no |
| <a name="input_create_workspace"></a> [create\_workspace](#input\_create\_workspace) | Determinate to create a workspace or not | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of TFC workspace | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The name of TFC project | `string` | n/a | yes |
| <a name="input_queue_all_runs"></a> [queue\_all\_runs](#input\_queue\_all\_runs) | Determinates to queue all runs or not. Defaults to `false` | `bool` | `false` | no |
| <a name="input_share_state_with_workspace_ids"></a> [share\_state\_with\_workspace\_ids](#input\_share\_state\_with\_workspace\_ids) | The ID of workspace to share the terraform state with | `set(string)` | `null` | no |
| <a name="input_speculative_enabled"></a> [speculative\_enabled](#input\_speculative\_enabled) | Indicates whether this workspace allows speculative plans | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The list of TFC workspace tags. Defaults to `[]` | `list(string)` | `[]` | no |
| <a name="input_terraform_reqiured_version"></a> [terraform\_reqiured\_version](#input\_terraform\_reqiured\_version) | The version of terraform required to run tasks. Defaults to `~> 1.7.0` | `string` | `"~>1.7.0"` | no |
| <a name="input_trigger_patterns"></a> [trigger\_patterns](#input\_trigger\_patterns) | List of glob patterns that describe the files Terraform Cloud monitors for changes. Trigger patterns are always appended to the root directory of the repository | `list(string)` | `[]` | no |
| <a name="input_variable_set_ids"></a> [variable\_set\_ids](#input\_variable\_set\_ids) | The ID's of variable set to attach to the workspace | `map(string)` | `{}` | no |
| <a name="input_vcs_repos"></a> [vcs\_repos](#input\_vcs\_repos) | Settings for the workspace's VCS repository | <pre>object({<br>    identifier = string<br>    branch     = string<br>  })</pre> | `null` | no |
| <a name="input_working_directory"></a> [working\_directory](#input\_working\_directory) | A relative path that Terraform will execute within | `string` | `""` | no |
| <a name="input_workspace_variables"></a> [workspace\_variables](#input\_workspace\_variables) | The workspace variables | <pre>map(object({<br>    value       = string<br>    category    = string<br>    sensitive   = optional(bool)<br>    description = optional(string)<br>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of workspace |
| <a name="output_name"></a> [name](#output\_name) | The name of workspace |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
