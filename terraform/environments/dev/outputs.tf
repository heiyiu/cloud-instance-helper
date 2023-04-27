# ip of the created vm
output "sandbox_leader_server_ipv6_address" {
  value = module.hertzner_cloud_stack.hcloud_server.sandbox_leader_server.ipv6_address
}

# ip of the created vm
output "sandbox_leader_server_ipv4_address" {
  value = module.hertzner_cloud_stack.hcloud_server.sandbox_leader_server.ipv4_address
}