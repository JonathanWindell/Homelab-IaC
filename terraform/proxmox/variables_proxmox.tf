# Variables for Proxmox
variable "address" {
    type: string
}

variable "api_token" {
    type: string
}

variable "api_token_secret" {
    type: string
    sensitive = true
}

variable "lxc_hostname" {
    type: string
}

variable "lxc_ostemplate" {
    type: string
}

variable "lxc_password" {
    type: string
    sensitive = true
}

variable "lxc_cores" {
    type: int
}

variable "lxc_memory {
    type: int
}

variable "lxc_swap" {
    type: int
}

variable "vm_name" {
    type: string
}

variable "vm_clone" {
    type: string
}

variable "vm_storage" {
    type: int
}

variable "vm_cores" {
    type: int
}

variable "vm_memory" {
    type: int
}

variable "vm_disk_gb" {
    type: int
}

variable "vm_nic" {
    type: string
}

variable "vm_bridge" {
    type: string
}

variable "vm_username" {
    type: string
}

variable "vm_target_node" {
    type: string
}

variable "ssh_public_key" {
    type: string
    sensitive = true
}










