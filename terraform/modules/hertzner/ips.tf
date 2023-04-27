resource "hcloud_floating_ip" "master_node_ip" {
  type      = "ipv4"
  server_id = hcloud_server.sandbox_leader_server.id

  depends_on   = [
    hcloud_server.sandbox_leader_server
  ]
}

resource "hcloud_floating_ip_assignment" "master_node_ip_assignment" {
  floating_ip_id = hcloud_floating_ip.master_node_ip.id
  server_id      = hcloud_server.sandbox_leader_server.id

  depends_on   = [
    hcloud_floating_ip.master_node_ip
  ]
}