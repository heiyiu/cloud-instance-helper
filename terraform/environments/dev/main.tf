module "hertzner_cloud_stack" {
  source = "../../modules/hertzner"

  hcloud_token        = var.hcloud_token
  home_ip             = var.home_ip
  home_ipv6           = var.home_ipv6
  cloud_init_filename = var.cloud_init_filename
  instance_size       = var.instance_size
  instance_name       = var.instance_name
  instance_location   = var.instance_location
  existing_volume     = var.existing_volume
}
