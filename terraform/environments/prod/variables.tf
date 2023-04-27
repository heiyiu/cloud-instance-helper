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

# TODO: change instance name to a variable