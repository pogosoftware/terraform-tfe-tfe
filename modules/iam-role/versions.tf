terraform {
  required_version = "~> 1.8.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.55.0"
    }
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.92.0"
    }
  }
}
