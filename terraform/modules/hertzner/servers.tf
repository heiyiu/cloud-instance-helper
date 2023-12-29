# do not create volume thru terraform
# create thru UI and select ext4
data "hcloud_volume" "game_volume" {
  name = "ck-data"
  count = var.existing_volume ? 1 : 0
}

resource "hcloud_server" "sandbox_leader_server" {
  name         = var.instance_name
  # temporarily using id due to string search issue
  # 67794396 is ubuntu 22.04
  image        = "67794396"
  server_type  = var.instance_size
  # use ash for VA, USA
  location     = var.instance_location
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

resource "hcloud_volume_attachment" "gvol_attachment" {
  count     = data.hcloud_volume.game_volume[0].id != "" ? 1 : 0
  server_id = hcloud_server.sandbox_leader_server.id
  volume_id = data.hcloud_volume.game_volume[0].id

  depends_on = [
    hcloud_server.sandbox_leader_server
  ]
}
