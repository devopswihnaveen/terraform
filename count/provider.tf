terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.32.1"
    }
  }

  backend "s3" {
    bucket = "terraform-remote-state-naveen"
    key = "remote-state-count"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}

provider "aws" {
  # Configuration options
}