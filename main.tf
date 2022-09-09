module "aaa_cluster_aaa" {
  source = "./cluster"

  project = var.project
  region  = var.region
  network = local.aaa_cluster_aaa-network

  bastion_name                  = var.aaa_instance_aaa-name
  bastion_machine_type          = var.aaa_instance_aaa-machine_type
  bastion_zone                  = var.aaa_instance_aaa-zone
  bastion_tags                  = var.aaa_instance_aaa-tags
  bastion_address_type          = var.aaa_instance_aaa-address_type
  bastion_desired_status        = var.aaa_instance_aaa-desired_status
  bastion_boot_image            = var.aaa_instance_aaa-boot_image
  bastion_boot_disk_size        = var.aaa_instance_aaa-boot_disk_size
  bastion_boot_disk_type        = var.aaa_instance_aaa-boot_disk_type
  bastion_boot_disk_auto_delete = var.aaa_instance_aaa-boot_disk_auto_delete
  bastion_preemptible           = var.aaa_instance_aaa-preemptible
  bastion_automatic_restart     = var.aaa_instance_aaa-automatic_restart

  cluster_name              = local.aaa_cluster_aaa-name
  cluster_tags              = var.aaa_cluster_aaa-tags
  cluster_cidr              = var.aaa_cluster_aaa-cidr
  cluster_private_nodes     = var.aaa_cluster_aaa-private_nodes
  cluster_private_endpoints = var.aaa_cluster_aaa-private_endpoints
  cluster_master_cidr       = var.aaa_cluster_aaa-master_cidr
  cluster_type              = var.aaa_cluster_aaa-type
  cluster_min_version       = var.aaa_cluster_aaa-min_version
  cluster_init              = var.aaa_cluster_aaa-init
}