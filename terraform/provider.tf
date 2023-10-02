# PROVIDER
terraform {

  required_version = "~> 1.5.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.13"
    }
  }

  backend "s3" {
    bucket         = "tf-notifier-state-v1"
    key            = "terraform.tfstate"
    dynamodb_table = "terraform-state-lock-do-ricardolima"
    region         = "us-east-1"
  }

}

