#############################################
# Project Details
#
variable "project" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

#############################################
# SSH Keys
#
variable "terraform_user" { type = string }
variable "terraform_ssh_key_pub" { type = string }

#############################################
# GKE Clusters
#
variable "aaa_cluster_aaa-network_name" { type = string }
variable "aaa_cluster_aaa-preemptible" { type = string }
variable "aaa_cluster_aaa-name" { type = string }
variable "aaa_cluster_aaa-tags" { type = list(string) }
variable "aaa_cluster_aaa-cidr" { type = string }
variable "aaa_cluster_aaa-type" { type = string }
variable "aaa_cluster_aaa-min_version" { type = string }
variable "aaa_cluster_aaa-init" { type = number }

#############################################
# GKE Pools
#
variable "aaa_node_pool_aaa-preemptible" { type = string }
variable "aaa_node_pool_aaa-name" { type = string }
variable "aaa_node_pool_aaa-tags" { type = list(string) }
variable "aaa_node_pool_aaa-cidr" { type = string }
variable "aaa_node_pool_aaa-type" { type = string }
variable "aaa_node_pool_aaa-init" { type = string }
variable "aaa_node_pool_aaa-min" { type = string }
variable "aaa_node_pool_aaa-max" { type = string }

variable "aaa_node_pool_bbb-preemptible" { type = string }
variable "aaa_node_pool_bbb-name" { type = string }
variable "aaa_node_pool_bbb-tags" { type = list(string) }
variable "aaa_node_pool_bbb-cidr" { type = string }
variable "aaa_node_pool_bbb-type" { type = string }
variable "aaa_node_pool_bbb-init" { type = string }
variable "aaa_node_pool_bbb-min" { type = string }
variable "aaa_node_pool_bbb-max" { type = string }