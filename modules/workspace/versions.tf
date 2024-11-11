terraform {
  required_version = "~> 1.9"

  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.98.1"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.60.0"
    }
  }
}
