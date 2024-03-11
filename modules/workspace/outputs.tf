output "id" {
  description = "The ID of workspace"
  value       = try(tfe_workspace.this[0].id, null)
}

output "name" {
  description = "The name of workspace"
  value       = try(tfe_workspace.this[0].name, null)
}
