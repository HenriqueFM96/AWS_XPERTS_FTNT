terraform {
    #Terraform version
    required_version = ">= 0.12.24"
    required_providers {
      aws = {
        source = "hashicorp/aws"
        }
    }

    backend "remote" {
        organization = "XPERTS"
        workspaces {
            name = "AWSWorkspace"
        }         
    }   
}

provider "aws" {
  region = "us-east-1"
}

