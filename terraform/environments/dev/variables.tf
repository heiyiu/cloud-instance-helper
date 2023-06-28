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
  default = "cloud-init-docker.yaml"
}

variable "instance_size" {
  # use cpx51 for ai image generation
  # use cpx11 for regular cloud work
  default   = "cpx41"
}

variable "instance_name" {
  default  = "zomboidds"
}