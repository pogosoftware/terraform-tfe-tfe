variable "create_workspace" {
  default     = true
  description = "Determinate to create a workspace or not"
  type        = bool
}

variable "project_id" {
  description = "The name of TFC project"
  type        = string
}

variable "workspace" {
  description = "The name of TFC workspace"
  type        = string
}

variable "queue_all_runs" {
  default     = false
  description = "Determinates to queue all runs or not. Defaults to `false`"
  type        = bool
}

variable "allow_destroy_plan" {
  default     = false
  description = "Determinate to allow destroy play or not. Defaults to `false`"
  type        = bool
}

variable "tag_names" {
  default     = []
  description = "The list of TFC workspace tags. Defaults to `[]`"
  type        = list(string)
}

variable "auto_apply" {
  default     = false
  description = "Automatically apply changes when a Terraform plan is successful. If this workspace is linked to version control, a push to the default branch of the linked repository will trigger a plan and apply. Default to `false`"
  type        = bool
}

variable "auto_apply_run_trigger" {
  default     = false
  description = "Run triggers create new plans whenever a specified source workspace completes an apply. This setting automatically applies these automatically created runs. Defaults to `false`"
  type        = bool
}

variable "terraform_reqiured_version" {
  default     = "~>1.7.0"
  description = "The version of terraform required to run tasks. Defaults to `~> 1.7.0`"
  type        = string
}

variable "remote_state_consumer_ids" {
  default     = null
  description = "The ID of workspace to share the terraform state with"
  type        = set(string)
}

variable "vcs_repos" {
  default     = null
  description = "Settings for the workspace's VCS repository"
  type = object({
    identifier = string
    branch     = string
  })
}

variable "working_directory" {
  default     = ""
  description = "A relative path that Terraform will execute within"
  type        = string
}

variable "trigger_patterns" {
  default     = []
  description = "List of glob patterns that describe the files Terraform Cloud monitors for changes. Trigger patterns are always appended to the root directory of the repository"
  type        = list(string)
}

variable "speculative_enabled" {
  default     = true
  description = "Indicates whether this workspace allows speculative plans"
  type        = bool
}

variable "workspace_variables" {
  default     = {}
  description = "The workspace variables"
  type = map(object({
    value       = string
    category    = string
    sensitive   = optional(bool)
    description = optional(string)
  }))
}

variable "variable_set_ids" {
  default     = {}
  description = "The ID's of variable set to attach to the workspace"
  type        = map(string)
}
