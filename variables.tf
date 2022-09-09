#############################################
# Project Details
#
variable "project_id" { type = string }
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
variable "aaa_gke_aaa-preemptible" { type = string }
variable "aaa_gke_aaa-name" { type = string }
variable "aaa_gke_aaa-tags" { type = list(string) }
variable "aaa_gke_aaa-cidr" { type = string }
variable "aaa_gke_aaa-type" { type = string }
variable "aaa_gke_aaa-min_version" { type = string }
variable "aaa_gke_aaa-init" { type = number }