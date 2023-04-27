terraform {
  # use terraform cloud for backend
  # terraform cloud has development tag for the cloud-instance-helper project
  cloud {
    organization = "heicorp"
    hostname = "app.terraform.io"

    workspaces {
      tags = [ "development" ]
    }
  }
}

