#############################################
# Project Details
#
project = "core-337701"
region  = "europe-central2"
prefix  = "a" # must be [a-z]

#############################################
# SSH Keys
#
terraform_user        = "terraform"
terraform_ssh_key_pub = "terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDH7GltxAbuv18fNiak6OL06Pg+B+MvDfDj8bXYauy2CdsM5g0A6wLLGrnqTvlaEZ+h0aVDFPwi9+Htkqp8uEC0E47+MckDt92ZhXkEozYsDU/eUkI9BjxX3mSuRJ36WizG5Fe/8h2/kGeQsBIgdHMepHWVw5lvsHUsVJDItigxJcknRWWfjus/tlBP+i9yDHilPhZXQWneW+sa2IW5h3QT64A8QJWkyUILlzkYxKqnhHm93DV2b5V4ofIvvBzpjolSDGjDzMyxIzkCOyuSGxVQgdgq45VhpOWywkf50SL5jJHBs61p6GBsM75opW0NVTLouFohd+rcA6vPva2U+t3pUYTZMCSxh5oe+HG2Q5O4U36b51UMApnUJF4UhovdsIFatV0mFWSECKHGxmH6pluJMTXSNaT+azDtm34Dk89sEDCVnqdWcjQywfZ70pvAQvXvauvOg0FluLkpL3WxFqc+poBR0/9qLO+0+q5dNF81vWUzoZ7Tq2BCRtatn0Dl4Ck="

#############################################
# VPC Networks
#
aaa_network_aaa = "network"

#############################################
# GKE Clusters
#
aaa_cluster_aaa-preemptible = true
aaa_cluster_aaa-name        = "example"
aaa_cluster_aaa-tags        = ["gke", "all"]
aaa_cluster_aaa-cidr        = "10.0.10.0/24"
aaa_cluster_aaa-type        = "e2-standard-2"
aaa_cluster_aaa-min_version = "1.21.5-gke.1302"
aaa_cluster_aaa-init        = 1

#############################################
# GKE Pools
#
aaa_node_pool_aaa-preemptible = true
aaa_node_pool_aaa-name        = "mini-pool"
aaa_node_pool_aaa-tags        = ["gke", "mini-pool", "all"]
aaa_node_pool_aaa-cidr        = "10.0.11.0/24"
aaa_node_pool_aaa-type        = "e2-standard-2"
aaa_node_pool_aaa-init        = 3
aaa_node_pool_aaa-min         = 3
aaa_node_pool_aaa-max         = 3