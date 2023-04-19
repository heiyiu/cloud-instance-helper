# ip of the created vm
output "my_cisandbox_ipv6_address" {
  value = hcloud_server.my_cisandbox.ipv6_address
}

# ip of the created vm
output "my_cisandbox_ipv4_address" {
  value = hcloud_server.my_cisandbox.ipv4_address
}