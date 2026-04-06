# Variables for Proxmox Module
variable "proxmox_config_module" {
  description = "Full configuration for Proxmox provider and resources"
  type = object({
    # Connection & Auth
    address             = string
    api_token           = string
    api_token_secret    = string

    # LXC specific
    lxc_hostname        = string
    lxc_ostemplate      = string
    lxc_password        = string
    lxc_cores           = number
    lxc_memory          = number
    lxc_swap            = number

    # VM specific
    vm_ip               = string
    vm_gateway          = string
    vm_name             = string
    vm_clone            = string
    vm_storage          = string 
    vm_cores            = number
    vm_memory           = number
    vm_disk_gb          = number
    vm_nic              = string
    vm_bridge           = string
    vm_username         = string
    vm_target_node      = string
    ssh_public_key      = string
  })
  sensitive = true
}

# Variables for Unifi Module
variable "unifi_config_module" {
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