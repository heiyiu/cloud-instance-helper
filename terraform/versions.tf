terraform {
  # variable not supported in terraform block
  locals {
    workspace_tag = var.workspace_tag
  }
  # use terraform cloud for backend
  # terraform cloud has development tag for the cloud-instance-helper project
  cloud {
    organization = "heicorp"
    hostname = "app.terraform.io"

    workspaces {
      tags = [ local.workspace_tag ]
    }
  }
}

