# Variables for Proxmox Module
variable "proxmox_config" {
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