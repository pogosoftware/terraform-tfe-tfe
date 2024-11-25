terraform {
  required_version = ">= 1.9.0, < 2.0.0"

  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = ">= 0.99.0, < 1.0.0"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = ">= 0.60.0, < 1.0.0"
    }
  }
}
