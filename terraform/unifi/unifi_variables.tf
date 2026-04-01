# Variables for Unifi
variable "username" {
  type = string
}

variable "password" {
  type      = string
  sensitive = true 
}

variable "api_url" {
  type = string
}

variable "tationary_pc_address" {
  type = string
}

variable "raspberry_pi_address" {
  type = string
}

variable "wazuh_manager_address" {
  type = string
}

variable "gateway_address" {
  type = string
}

variable "personal_portfolio_address" {
  type = string
}

variable "home_network_vlan" {
  type = string
}

variable "honeypot_network_vlan" {
  type = string
}

variable "home_network_dhcp_start" {
  type = string
}

variable "home_network_dhcp_end" {
  type = string
}

variable "honeypot_network_dhcp_start" {
  type = string
}

variable "honeypot_network_dhcp_end" {
  type = string
}

variable "ucg_ultra_router_mac" {
  type = string
}

variable "usw_flex_switch_mac" {
  type = string
}





