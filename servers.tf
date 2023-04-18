resource "hcloud_server" "my_cisandbox" {
  name         = "mycisandbox"
  # temporarily using id due to string search issue
  # 67794396 is ubuntu 22.04
  image        = "67794396"
  # use cpx51 for ai image generation
  # use cpx11 for regular cloud work
  server_type  = "cpx11"
  location     = "ash"
  firewall_ids = [hcloud_firewall.server_firewall.id]
  user_data    = file("./cloud-init.yaml")
  ssh_keys     = [hcloud_ssh_key.batch_user_key.id]
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
  depends_on   = [
    hcloud_firewall.server_firewall
  ]
}