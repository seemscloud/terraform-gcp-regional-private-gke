variable "project" { type = string }
variable "region" { type = string }
variable "network" { type = string }

variable "bastion_name" { type = string }
variable "bastion_machine_type" { type = string }
variable "bastion_zone" { type = string }
variable "bastion_tags" { type = list(string) }
variable "bastion_address_type" { type = string }
variable "bastion_desired_status" { type = string }
variable "bastion_boot_image" { type = string }
variable "bastion_boot_disk_size" { type = number }
variable "bastion_boot_disk_type" { type = string }
variable "bastion_boot_disk_auto_delete" { type = bool }
variable "bastion_preemptible" { type = bool }
variable "bastion_automatic_restart" { type = bool }

variable "cluster_name" { type = string }
variable "cluster_tags" { type = list(string) }
variable "cluster_cidr" { type = string }
variable "cluster_private_nodes" { type = bool }
variable "cluster_private_endpoints" { type = bool }
variable "cluster_master_cidr" { type = string }
variable "cluster_type" { type = string }
variable "cluster_min_version" { type = string }
variable "cluster_init" { type = string }