terraform {
  # use terraform cloud for backend
  # terraform cloud has development tag for the cloud-instance-helper project
  cloud {
    organization = "heicorp"
    hostname = "app.terraform.io"
  }
}

provider "terraform" {
  workspaces {
    tags = [var.workspace_tag]
  }
}