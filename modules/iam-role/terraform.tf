terraform {
  required_version = "~> 1.7.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.38"
    }
    hcp = {
      source  = "hashicorp/hcp"
      version = "~> 0.83"
    }
  }
}
