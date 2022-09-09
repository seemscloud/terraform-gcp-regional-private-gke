module "aaa_cluster_aaa" {
  source = "./cluster"

  region      = var.region
  network     = local.aaa_cluster_aaa-network
  name        = local.aaa_cluster_aaa-name
  tags        = var.aaa_cluster_aaa-tags
  cidr        = var.aaa_cluster_aaa-tags
  type        = var.aaa_cluster_aaa-type
  min_version = var.aaa_cluster_aaa-min_version
  init        = var.aaa_cluster_aaa-init
}