output "id" {
  description = "The ID of workspace"
  value       = tfe_workspace.this.id
}

output "name" {
  description = "The name of workspace"
  value       = tfe_workspace.this.name
}
