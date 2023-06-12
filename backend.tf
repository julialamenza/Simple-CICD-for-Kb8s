terraform {
  backend "s3" {
    bucket  = "terraform-state-jlamenza"
    key     = "terraform.tfstate"
    region  = "eu-north-1"
    encrypt = true
  }
  required_providers {

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.19.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.9.0"
    }
  }

}
