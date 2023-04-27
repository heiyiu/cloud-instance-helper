# ip of the created vm
output "my_cisandbox_ipv6_address" {
  value = module.hertzner_cloud_stack.my_cisandbox.ipv6_address
}

# ip of the created vm
output "my_cisandbox_ipv4_address" {
  value = module.hertzner_cloud_stack.my_cisandbox.ipv4_address
}