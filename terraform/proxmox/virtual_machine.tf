# Proxmox Virtual Machine
resource "proxmox_vm_qemu" "virtual_machine" {
  name        = var.proxmox_config.vm_name
  target_node = var.proxmox_config.vm_target_node
  clone       = var.proxmox_config.vm_clone
  
  # Aktivera kommunikation med Proxmox GUI
  agent = 1 

  # Cloud-Init Settings
  os_type   = "cloud-init"
  ciuser    = var.proxmox_config.vm_username     
  sshkeys   = var.proxmox_config.ssh_public_key     
  ipconfig0 = "ip=${var.proxmox_config.vm_ip},gw=${var.proxmox_config.vm_gateway}"

  cores   = var.proxmox_config.vm_cores
  sockets = 1
  memory  = var.proxmox_config.vm_memory

  disk {
    size            = var.proxmox_config.vm_disk_gb
    type            = "scsi"
    storage         = var.proxmox_config.vm_storage
    iothread        = 1
  }

  network {
    model  = "virtio"
    bridge = var.proxmox_config.vm_bridge
  }
}