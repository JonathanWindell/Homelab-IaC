# LXC Container 
resource "proxmox_lxc" "linux_container" {
    target_node  = "pve"
    hostname     = var.proxmox_config.lxc_hostname
    ostemplate   = var.proxmox_config.lxc_ostemplate
    password     = var.proxmox_config.lxc_password
    count        = 1
    unprivileged = true

    cores   = var.proxmox_config.lxc_cores
    memory  = var.proxmox_config.lxc_memory
    swap    = var.proxmox_config.lxc_swap

    rootfs {
    storage = "local-zfs"
    size    = "8G"
  }
  
  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "dhcp"
  }
}