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
    source_ips = concat( [format("%s/32", var.home_ip)], [for ip in var.cloudflare_ips : ip] )
  }
  # https       # format("%s/32", var.home_ip),
  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "443"
    source_ips = concat( [format("%s/32", var.home_ip)], [for ip in var.cloudflare_ips : ip] )
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
  # traeffik dashboard port
  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "9000"
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
  # zomboid ports
  rule {
    direction  = "in"
    protocol   = "udp"
    port       = "16261-16262"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }
}