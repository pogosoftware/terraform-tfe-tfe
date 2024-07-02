<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 1.8.0 |
| aws | 5.56.1 |
| hcp | 0.92.0 |

## Providers

| Name | Version |
|------|---------|
| aws | 5.56.1 |
| hcp | 0.92.0 |

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
