terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # The Remote Backend Configuration
  backend "s3" {
    bucket = "terraform-state-practice-2026"
    key    = "cicd-practice/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}