terraform {
  required_version = "~> 1.8.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.56.1"
    }
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.93.0"
    }
  }
}
