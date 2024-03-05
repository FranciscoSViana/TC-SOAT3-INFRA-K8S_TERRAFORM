terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.39.1"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "2.4.1"
    }

    null = {
      source  = "hashicorp/null"
      version = "3.2.2"
    }

    template = {
      source  = "hashicorp/template"
      version = "2.2.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.26.0"
    }
  }

  required_version = "~> 1.7.3"
}