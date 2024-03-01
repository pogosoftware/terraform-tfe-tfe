####################################################################################################
### TFE
####################################################################################################
variable "aws_region" {
  default     = "eu-central-1"
  description = "The name of AWS region"
  type        = string
}

####################################################################################################
### TFE
####################################################################################################
variable "name_preffix" {
  description = "The name prefix of Terraform Cloud roles"
  type        = string
}

variable "plan_role_policy_json" {
  description = "The IAM json policy for plan role"
  type        = string
}

variable "apply_role_policy_json" {
  description = "The IAM json policy for apply role"
  type        = string
}

variable "tfe_aws_workload_identity_audience" {
  default     = "aws.workload.identity"
  description = "Will be used as the aud claim for the identity token. Defaults to `aws.workload.identity`"
  type        = string
}

variable "tfe_project" {
  description = "The name of TFE project"
  type        = string
}

variable "tfe_workspace" {
  description = "The name of TFE workspace"
  type        = string
}
