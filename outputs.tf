# ip of the created vm
output "my_cisandbox_ipv4_address" {
  value = hcloud_server.my_cisandbox.ipv4_address
}
