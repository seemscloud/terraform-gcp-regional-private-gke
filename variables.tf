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
# VPC Networks
#
variable "aaa_network_aaa" { type = string }

#############################################
# GKE Clusters
#
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