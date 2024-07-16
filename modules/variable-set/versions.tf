terraform {
  required_version = "~> 1.8.0"

  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.94.1"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.56.0"
    }
  }
}
