<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 1.9 |
| aws | 5.77.0 |
| hcp | 0.99.0 |

## Providers

| Name | Version |
|------|---------|
| aws | 5.77.0 |
| hcp | 0.99.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| apply\_role\_policy\_json | The IAM json policy for apply role | `string` | n/a | yes |
| aws\_region | The name of AWS region | `string` | `"eu-central-1"` | no |
| create\_iam\_role | Determinate to create AWS IAM role or not | `bool` | `true` | no |
| name\_preffix | The name prefix of Terraform Cloud roles | `string` | n/a | yes |
| plan\_role\_policy\_json | The IAM json policy for plan role | `string` | n/a | yes |
| tfe\_aws\_workload\_identity\_audience | Will be used as the aud claim for the identity token. Defaults to `aws.workload.identity` | `string` | `"aws.workload.identity"` | no |
| tfe\_project | The name of TFE project | `string` | n/a | yes |
| tfe\_workspace | The name of TFE workspace | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| apply\_role\_arn | The ARN of IAM apply role |
| plan\_role\_arn | The ARN of IAM plan role |

<!--- END_TF_DOCS --->

<!-- BEGIN_TF_DOCS -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.77.0 |
| <a name="provider_hcp"></a> [hcp](#provider\_hcp) | 0.99.0 |

## Modules

No modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apply_role_policy_json"></a> [apply\_role\_policy\_json](#input\_apply\_role\_policy\_json) | The IAM json policy for apply role | `string` | n/a | yes |
| <a name="input_name_preffix"></a> [name\_preffix](#input\_name\_preffix) | The name prefix of Terraform Cloud roles | `string` | n/a | yes |
| <a name="input_plan_role_policy_json"></a> [plan\_role\_policy\_json](#input\_plan\_role\_policy\_json) | The IAM json policy for plan role | `string` | n/a | yes |
| <a name="input_tfe_project"></a> [tfe\_project](#input\_tfe\_project) | The name of TFE project | `string` | n/a | yes |
| <a name="input_tfe_workspace"></a> [tfe\_workspace](#input\_tfe\_workspace) | The name of TFE workspace | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The name of AWS region | `string` | `"eu-central-1"` | no |
| <a name="input_create_iam_role"></a> [create\_iam\_role](#input\_create\_iam\_role) | Determinate to create AWS IAM role or not | `bool` | `true` | no |
| <a name="input_tfe_aws_workload_identity_audience"></a> [tfe\_aws\_workload\_identity\_audience](#input\_tfe\_aws\_workload\_identity\_audience) | Will be used as the aud claim for the identity token. Defaults to `aws.workload.identity` | `string` | `"aws.workload.identity"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_apply_role_arn"></a> [apply\_role\_arn](#output\_apply\_role\_arn) | The ARN of IAM apply role |
| <a name="output_plan_role_arn"></a> [plan\_role\_arn](#output\_plan\_role\_arn) | The ARN of IAM plan role |
<!-- END_TF_DOCS -->
