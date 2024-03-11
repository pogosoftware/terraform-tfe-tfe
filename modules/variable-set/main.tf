resource "tfe_variable_set" "this" {
  name          = var.name
  description   = var.description
  workspace_ids = compact(var.workspace_ids)
  organization  = data.hcp_organization.this.name
}

resource "tfe_variable" "this" {
  for_each = var.variables

  key             = each.key
  value           = each.value.value
  category        = each.value.category
  sensitive       = lookup(each.value, "sensitive", false)
  description     = lookup(each.value, "description", "")
  variable_set_id = tfe_variable_set.this.id
}
