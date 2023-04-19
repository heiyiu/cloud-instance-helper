# allow ssh connection from home ip address
resource "hcloud_firewall" "server_firewall" {
  name = "server-firewall"
  # ssh 
  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "22"
    source_ips = [
      format("%s/32", var.home_ip),
      format("%s/64", var.home_ipv6)
    ]
  }
  # http
  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "80"
    source_ips = [
      format("%s/32", var.home_ip),
      format("%s/64", var.home_ipv6)
    ]
  }
  # https
  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "443"
    source_ips = [
      format("%s/32", var.home_ip),
      format("%s/64", var.home_ipv6)
    ]
  }
  # https
  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "8443"
    source_ips = [
      format("%s/32", var.home_ip),
      format("%s/64", var.home_ipv6)
    ]
  }
  # kubernetes node ports
  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "30000-32767"
    source_ips = [
      format("%s/32", var.home_ip),
      format("%s/64", var.home_ipv6)
    ]
  }
}