variable "name" {
  description = "The name of variable set"
  type        = string
}

variable "description" {
  default     = ""
  description = "The variable set description"
  type        = string
}

variable "workspace_ids" {
  default     = []
  description = "The ID's of workspace to attach variable set"
  type        = set(string)
}

variable "variables" {
  description = "The variables assigned to the variable set"
  type = map(object({
    value       = string
    category    = string
    sensitive   = optional(bool)
    description = optional(string)
  }))
}
