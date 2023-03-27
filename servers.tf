resource "hcloud_server" "my_ci_sandbox" {
  name        = "my_ci_sandbox"
  image       = "ubuntu-22.04"
  server_type = "cpx11"
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
}