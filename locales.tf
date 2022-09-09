locals {
  random = "${var.prefix}${random_string.random.result}"

  # Network
  aaa_vpc_aaa = "${local.random}-${var.aaa_vpc_aaa}"

  # GKE Cluster
  aaa_gke_aaa-name = "${local.random}-${var.aaa_gke_aaa-name}"
}