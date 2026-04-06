terraform {
  required_providers {
    unifi = {
      source          = "paultyng/unifi"
      version         = "0.36.0"
    }
    proxmox = {
      source          = "telmate/proxmox"
      version         = "3.0.2-rc04" 
    }
  }
}

# Unifi Config
provider "unifi" {
  username            = var.unifi_config_module.username
  password            = var.unifi_config_module.password
  api_url             = var.unifi_config_module.api_url
  allow_insecure      = true
}

module "unifi_setup" {
  source              = "./unifi" 
  unifi_config        = var.unifi_config_module
}

# Proxmox Config
provider "proxmox" {
  pm_api_url          = var.proxmox_config_module.address
  pm_api_token_id     = var.proxmox_config_module.api_token
  pm_api_token_secret = var.proxmox_config_module.api_token_secret
  pm_tls_insecure     = true
}

module "proxmox_setup" {
  source              = "./proxmox" 
  proxmox_config      = var.proxmox_config_module
}