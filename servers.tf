resource "hcloud_server" "my_cisandbox" {
  name        = "mycisandbox"
  image       = "ubuntu-22.04"
  server_type = "cpx11"
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
}