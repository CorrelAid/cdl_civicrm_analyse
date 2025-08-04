terraform {
  required_version = "1.10.5"
  backend "s3" {
    endpoints = {
      s3 = "https://fra1.digitaloceanspaces.com"
    }

    bucket = "cdl-civicrm-analyse-backend"
    key    = "state.tfstate"

    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_s3_checksum            = true
    region                      = "us-east-1"
  }

  required_providers {
    infisical = {
      version = "0.11.6"
      source  = "infisical/infisical"
    }
    hetznerdns = {
      source  = "germanbrew/hetznerdns"
      version = "3.2.2"
    }

    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "2.5.2"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"

    }
  }
}

provider "infisical" {
  client_id     = "5fd72230-4272-4738-851f-17c1f83b0e31"
  client_secret = var.infisical_client_secret
}

