module "aaa_cluster_aaa" {
  source = "./network"
  
  aaa_network_aaa = local.aaa_network_aaa
}