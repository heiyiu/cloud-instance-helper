variable "hcloud_token" {
  sensitive = true
}

variable "workspace_tag" {
  default   = "development"
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