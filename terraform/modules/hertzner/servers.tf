data "hcloud_volume" "zom_game_volume" {
  name = "zomboid-data"
}

resource "hcloud_server" "sandbox_leader_server" {
  name         = var.instance_name
  # temporarily using id due to string search issue
  # 67794396 is ubuntu 22.04
  image        = "67794396"
  server_type  = var.instance_size
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

resource "hcloud_volume_attachment" "zgvol_attachment" {
  # do not create if volume does not exist 
  count     = data.hcloud_volume.zom_game_volume.id != "" ? 1 : 0
  server_id = hcloud_server.sandbox_leader_server.id
  volume_id = data.hcloud_volume.zom_game_volume.id

  depends_on = [
    hcloud_server.sandbox_leader_server
  ]
}