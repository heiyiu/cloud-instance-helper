terraform {
  # use terraform cloud for backend
  # terraform cloud has development tag for the cloud-instance-helper project
  cloud {
    organization = "heicorp"
    hostname = "app.terraform.io"

    workspaces {
      tags = ["development"]
    }
  }

  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "1.38.2"
    }
  }
}

provider "hcloud" {
  # set token in env var
  token = var.hcloud_token
}