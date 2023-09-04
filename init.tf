# token: Edit zone DNS
terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4"
    }
  }
}


provider "cloudflare" {
  api_token = var.api_token
}

