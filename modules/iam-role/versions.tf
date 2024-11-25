terraform {
  required_version = ">= 1.9.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.77.0, < 6.0.0"
    }
    hcp = {
      source  = "hashicorp/hcp"
      version = ">= 0.99.0, < 1.0.0"
    }
  }
}
