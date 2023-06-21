variable "hcloud_token" {
  sensitive = true
}

variable "home_ip" {
  sensitive = true
  default   = "127.0.0.1"
}

# default is loopback
variable "home_ipv6" {
  sensitive = true
  default   = "::1"
}

# which cloudinit setup to run
variable "cloud_init_filename" {
  default = cloud-init-docker.yaml
}
# TODO: change instance name to a variable