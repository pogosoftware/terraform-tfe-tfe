<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.7.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.38 |
| <a name="requirement_hcp"></a> [hcp](#requirement\_hcp) | ~> 0.83 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.38 |
| <a name="provider_hcp"></a> [hcp](#provider\_hcp) | ~> 0.83 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.apply](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.plan](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.apply](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy.plan](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.apply](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.plan](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [hcp_organization.this](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/data-sources/organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apply_role_policy_json"></a> [apply\_role\_policy\_json](#input\_apply\_role\_policy\_json) | The IAM json policy for apply role | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The name of AWS region | `string` | `"eu-central-1"` | no |
| <a name="input_name_preffix"></a> [name\_preffix](#input\_name\_preffix) | The name prefix of Terraform Cloud roles | `string` | n/a | yes |
| <a name="input_plan_role_policy_json"></a> [plan\_role\_policy\_json](#input\_plan\_role\_policy\_json) | The IAM json policy for plan role | `string` | n/a | yes |
| <a name="input_tfe_aws_workload_identity_audience"></a> [tfe\_aws\_workload\_identity\_audience](#input\_tfe\_aws\_workload\_identity\_audience) | Will be used as the aud claim for the identity token. Defaults to `aws.workload.identity` | `string` | `"aws.workload.identity"` | no |
| <a name="input_tfe_project"></a> [tfe\_project](#input\_tfe\_project) | The name of TFE project | `string` | n/a | yes |
| <a name="input_tfe_workspace"></a> [tfe\_workspace](#input\_tfe\_workspace) | The name of TFE workspace | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_apply_role_arn"></a> [apply\_role\_arn](#output\_apply\_role\_arn) | The ARN of IAM apply role |
| <a name="output_plan_role_arn"></a> [plan\_role\_arn](#output\_plan\_role\_arn) | The ARN of IAM plan role |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
