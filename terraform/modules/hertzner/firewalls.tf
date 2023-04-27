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
      format("%s/128", var.home_ipv6)
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
  # nginx test port 
  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "8080"
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