# Variables for Unifi
variable "unifi_username" {
  type = string
}

variable "unifi_password" {
  type      = string
  sensitive = true 
}

variable "unifi_api_url" {
  type = string
}

variable "unifi_stationary_pc_address" {
  type = string
}

variable "unifi_raspberry_pi_address" {
  type = string
}

variable "unifi_wazuh_manager_address" {
  type = string
}

variable "unifi_gateway_address" {
  type = string
}

variable "unifi_personal_portfolio_address" {
  type = string
}

variable "unifi_home_network_vlan" {
  type = string
}

variable "unifi_honeypot_network_vlan" {
  type = string
}

variable "unifi_home_network_dhcp_start" {
  type = string
}

variable "unifi_home_network_dhcp_end" {
  type = string
}

variable "unifi_honeypot_network_dhcp_start" {
  type = string
}

variable "unifi_honeypot_network_dhcp_end" {
  type = string
}

variable "unifi_ucg_ultra_router_mac" {
  type = string
}

variable "unifi_usw_flex_switch_mac" {
  type = string
}





