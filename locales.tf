locals {
  random = "${var.prefix}${random_string.random.result}"

  aaa_vpc_aaa = "${local.random}-${var.aaa_network_aaa}"
}