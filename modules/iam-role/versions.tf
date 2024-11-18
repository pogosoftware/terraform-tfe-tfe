terraform {
  required_version = "~> 1.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.76.0"
    }
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.98.1"
    }
  }
}
