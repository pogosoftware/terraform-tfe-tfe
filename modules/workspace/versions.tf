terraform {
  required_version = "~> 1.8.0"

  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.92.0"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.52"
    }
  }
}
