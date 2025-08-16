# This block configures the Terraform Cloud backend for remote state management.
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    netlify = {
      source = "registry.terraform.io/netlify/netlify"
    }
    
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }

  cloud {  
    organization = "Benn1440" 

    workspaces { 
      name = "Terraform_deploy" 
    } 
  } 
}

# The Netlify provider is used to manage resources on Netlify.
# The `NETLIFY_TOKEN` environment variable is used for authentication.
provider "netlify" {
   token = var.NETLIFY_TOKEN
}

