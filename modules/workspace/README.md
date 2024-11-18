<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 1.9 |
| hcp | 0.99.0 |
| tfe | 0.60.0 |

## Providers

| Name | Version |
|------|---------|
| hcp | 0.99.0 |
| tfe | 0.60.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| allow\_destroy\_plan | Determinate to allow destroy play or not. Defaults to `false` | `bool` | `false` | no |
| auto\_apply | Automatically apply changes when a Terraform plan is successful. If this workspace is linked to version control, a push to the default branch of the linked repository will trigger a plan and apply. Default to `false` | `bool` | `false` | no |
| auto\_apply\_run\_trigger | Run triggers create new plans whenever a specified source workspace completes an apply. This setting automatically applies these automatically created runs. Defaults to `false` | `bool` | `false` | no |
| create\_workspace | Determinate to create a workspace or not | `bool` | `true` | no |
| name | The name of TFC workspace | `string` | n/a | yes |
| project\_id | The name of TFC project | `string` | n/a | yes |
| queue\_all\_runs | Determinates to queue all runs or not. Defaults to `false` | `bool` | `false` | no |
| share\_state\_with\_workspace\_ids | The ID of workspace to share the terraform state with | `set(string)` | `[]` | no |
| speculative\_enabled | Indicates whether this workspace allows speculative plans | `bool` | `true` | no |
| tags | The list of TFC workspace tags. Defaults to `[]` | `list(string)` | `[]` | no |
| terraform\_reqiured\_version | The version of terraform required to run tasks. Defaults to `~> 1.7.0` | `string` | `"~\u003e1.7.0"` | no |
| trigger\_patterns | List of glob patterns that describe the files Terraform Cloud monitors for changes. Trigger patterns are always appended to the root directory of the repository | `list(string)` | `[]` | no |
| variable\_set\_ids | The ID's of variable set to attach to the workspace | `set(string)` | `[]` | no |
| vcs\_repos | Settings for the workspace's VCS repository | <pre>object({<br>    identifier = string<br>    branch     = string<br>  })</pre> | `null` | no |
| working\_directory | A relative path that Terraform will execute within | `string` | `""` | no |
| workspace\_variables | The workspace variables | <pre>map(object({<br>    value       = string<br>    category    = string<br>    sensitive   = optional(bool)<br>    description = optional(string)<br>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of workspace |
| name | The name of workspace |

<!--- END_TF_DOCS --->
