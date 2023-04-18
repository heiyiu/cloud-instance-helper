# allow ssh connection from home ip address
resource "hcloud_firewall" "server_firewall" {
  name = "server-firewall"
  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "22,80,443,8443"
    source_ips = [
      format("%s/32", var.home_ip)
    ]
  }
}