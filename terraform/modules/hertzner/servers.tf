resource "hcloud_server" "sandbox_leader_server" {
  name         = "mycisandbox"
  # temporarily using id due to string search issue
  # 67794396 is ubuntu 22.04
  image        = "67794396"
  # use cpx51 for ai image generation
  # use cpx11 for regular cloud work
  server_type  = "cpx41"
  location     = "ash"
  firewall_ids = [hcloud_firewall.server_firewall.id]
  user_data    = file(format("%s/files/%s", path.module, var.cloud_init_filename))
  ssh_keys     = [hcloud_ssh_key.batch_user_key.id]
  # ipv6 only is cheaper

  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }

  depends_on   = [
    hcloud_firewall.server_firewall
  ]
}