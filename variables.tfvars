#############################################
# Project Details
#
region = "europe-central2"
prefix = "a" # must be [a-z]

#############################################
# SSH Keys
#
terraform_user        = "terraform"
terraform_ssh_key_pub = <<EndOfMessage
terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDH7GltxAbuv18fNiak6OL06Pg+B+MvDfDj8bXYauy2CdsM5g0A6wLLGrnqTvlaEZ+h0aVDFPwi9+Htkqp8uEC0E47+MckDt92ZhXkEozYsDU/eUkI9BjxX3mSuRJ36WizG5Fe/8h2/kGeQsBIgdHMepHWVw5lvsHUsVJDItigxJcknRWWfjus/tlBP+i9yDHilPhZXQWneW+sa2IW5h3QT64A8QJWkyUILlzkYxKqnhHm93DV2b5V4ofIvvBzpjolSDGjDzMyxIzkCOyuSGxVQgdgq45VhpOWywkf50SL5jJHBs61p6GBsM75opW0NVTLouFohd+rcA6vPva2U+t3pUYTZMCSxh5oe+HG2Q5O4U36b51UMApnUJF4UhovdsIFatV0mFWSECKHGxmH6pluJMTXSNaT+azDtm34Dk89sEDCVnqdWcjQywfZ70pvAQvXvauvOg0FluLkpL3WxFqc+poBR0/9qLO+0+q5dNF81vWUzoZ7Tq2BCRtatn0Dl4Ck=
EndOfMessage

#############################################
# VPC Networks
#
aaa_network_aaa = "network"
