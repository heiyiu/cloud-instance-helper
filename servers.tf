resource "hcloud_server" "my_cisandbox" {
  name         = "mycisandbox"
  image        = "ubuntu-22.04"
  server_type  = "cpx11"
  location     = "ash"
  firewall_ids = [hcloud_firewall.server_firewall.id]
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
  depends_on   = [
    hcloud_firewall.server_firewall
  ]
}