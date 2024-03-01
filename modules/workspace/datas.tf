data "hcp_organization" "this" {}

data "tfe_github_app_installation" "gha_installation" {
  name = data.hcp_organization.this.name
}
