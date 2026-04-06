# Variables for Unifi Module
variable "unifi_config" {
  description = "Configuration object for Unifi network and devices"
  type = object({
    # Login Information
    username                    = string
    password                    = string
    api_url                     = string

    # IP Addresses
    stationary_pc_address       = string
    raspberry_pi_address        = string
    wazuh_manager_address       = string
    gateway_address             = string
    personal_portfolio_address  = string

    # VLAN IDs 
    home_network_vlan           = string
    honeypot_network_vlan       = string

    # DHCP Ranges
    home_network_dhcp_start     = string
    home_network_dhcp_end       = string
    honeypot_network_dhcp_start = string
    honeypot_network_dhcp_end   = string

    # MAC Addresses 
    ucg_ultra_router_mac        = string
    usw_flex_switch_mac         = string
  })
  sensitive = true 
}