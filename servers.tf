resource "hcloud_server" "my_cisandbox" {
  name         = "mycisandbox"
  image        = data.hcloud_image.available_ubuntu22_images.images[0].name
  # use cpx51 for ai image generation
  # use cpx11 for regular cloud work
  server_type  = "cpx11"
  location     = "ash"
  firewall_ids = [hcloud_firewall.server_firewall.id]
  user_data    = file("./cloud-init.yaml")
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
  depends_on   = [
    hcloud_firewall.server_firewall
  ]
}