locals {
  random = "${var.prefix}${random_string.random.result}"

  aaa_network_aaa = "${local.random}-${var.aaa_network_aaa}"
}