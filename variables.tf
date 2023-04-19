variable "hcloud_token" {
  sensitive = true
}

variable "home_ip" {
  sensitive = true
  default   = "0.0.0.0"
}

variable "home_ipv6" {
  sensitive = true
  default   = "::"
}