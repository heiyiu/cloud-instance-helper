terraform {
  # use terraform cloud for backend
  cloud {
    organization = "heicorp"
    hostname = "app.terraform.io"
  }

  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "1.36.2"
    }
  }
}

provider "hcloud" {
  # set token in env var
  token = var.hcloud_token
}