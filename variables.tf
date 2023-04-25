variable "hcloud_token" {
  sensitive = true
}

variable "home_ip" {
  sensitive = true
  default   = "127.0.0.1"
}

variable "home_ipv6" {
  sensitive = true
  default   = "::1"
}