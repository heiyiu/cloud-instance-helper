# allow ssh connection from home ip address
resource "hcloud_firewall" "server_firewall" {
  name = "server-firewall"
  # ssh 
  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "22"
    source_ips = [
      format("%s/32", var.home_ip)
    ]
  }
  # ssh for ipv6
  rule {
    direction  = "in"
    protocol   = "tcp"
    source_ips = [
      format("%s/64", var.home_ipv6)
    ]
  }
  # http
  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "80"
    source_ips = [
      format("%s/32", var.home_ip)
    ]
  }
  # https
  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "443"
    source_ips = [
      format("%s/32", var.home_ip)
    ]
  }
  # https
  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "8443"
    source_ips = [
      format("%s/32", var.home_ip)
    ]
  }
  # kubernetes node ports
  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "30000-32767"
    source_ips = [
      format("%s/32", var.home_ip)
    ]
  }
}