terraform {
  required_providers {
  okta = {
      source  = "okta/okta"
      version = "~> 3.36"
    }

    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.62.0"
    }
  }
}

provider "okta" {
  org_name = var.okta_orgname
  base_url = var.okta_baseurl
}

provider "tfe" {}