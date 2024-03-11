####################################################################################################
### WORKSPACE
####################################################################################################
resource "tfe_workspace" "this" {
  count = var.create_workspace == true ? 1 : 0

  name                      = var.workspace
  organization              = data.hcp_organization.this.name
  project_id                = var.project_id
  queue_all_runs            = var.queue_all_runs
  allow_destroy_plan        = var.allow_destroy_plan
  tag_names                 = var.tag_names
  terraform_version         = var.terraform_reqiured_version
  remote_state_consumer_ids = var.remote_state_consumer_ids
  working_directory         = var.working_directory
  trigger_patterns          = var.trigger_patterns
  speculative_enabled       = var.speculative_enabled
  auto_apply                = var.auto_apply
  auto_apply_run_trigger    = var.auto_apply_run_trigger

  dynamic "vcs_repo" {
    for_each = var.vcs_repos == null ? [] : [var.vcs_repos]

    content {
      github_app_installation_id = data.tfe_github_app_installation.gha_installation.id
      identifier                 = vcs_repo.value.identifier
      branch                     = vcs_repo.value.branch
    }
  }
}

####################################################################################################
### VARIABLES
####################################################################################################
resource "tfe_variable" "this" {
  for_each = { for k, v in var.workspace_variables : k => v if var.create_workspace == true }

  key          = each.key
  value        = each.value.value
  category     = lookup(each.value, "category", "terraform")
  sensitive    = lookup(each.value, "sensitive", false)
  workspace_id = tfe_workspace.this[0].id
  description  = lookup(each.value, "description", "")
}

####################################################################################################
### VARIABLE SETS
####################################################################################################
resource "tfe_workspace_variable_set" "hcp_cloud_workspace_hcp_credentials" {
  for_each = { for k, v in var.variable_set_ids : k => v if var.create_workspace == true }

  variable_set_id = each.key
  workspace_id    = tfe_workspace.this[0].id
}
