module "aaa_cluster_aaa" {
  source = "./cluster"

  aaa_network_aaa = local.aaa_network_aaa
}