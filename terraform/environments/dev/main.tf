module "hertzner_cloud_stack" {
  source = "../../modules/hertzner"

  hcloud_token  = var.hcloud_token
  home_ip       = var.home_ip
  home_ipv6     = var.home_ipv6
}