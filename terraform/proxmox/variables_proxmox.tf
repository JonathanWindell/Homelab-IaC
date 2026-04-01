# Variables for Proxmox
variable "proxmox_api_url" {
    type: string
}

variable "proxmox_api_token" {
    type: string
}

variable "proxmox_api_token_secret" {
    type: string
    sensitive = true
}





