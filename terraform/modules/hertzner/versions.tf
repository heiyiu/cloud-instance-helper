terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "1.40.0"
    }
  }
}

provider "hcloud" {
  # set token in env var
  token = var.hcloud_token
}