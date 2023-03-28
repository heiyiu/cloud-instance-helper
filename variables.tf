# normally terraform variables are in lowercase 
# but github forces env var to be in all caps
variable "HCLOUD_TOKEN" {
  sensitive = true
}

variable "HOME_IP" {
  sensitive = true
}