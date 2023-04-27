# ip of the created vm
output "sandbox_leader_server_ipv6_address" {
  value = hcloud_server.sandbox_leader_server.ipv6_address
}

# ip of the created vm
output "sandbox_leader_server_ipv4_address" {
  value = hcloud_server.sandbox_leader_server.ipv4_address
}