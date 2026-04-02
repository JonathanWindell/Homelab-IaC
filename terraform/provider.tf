terraform {
  required_providers {
    unifi = {
      source = "paultyng/unifi"
      version = "0.36.0" # Kontrollera senaste versionen
    }
    proxmox = {
      source = “telmate/proxmox”
      version = “3.0.2-rc04” 
    }
  }

  # Provider for Unifi
  provider "unifi" {
    username = var.unifi_config.username
    password = var.unifi_config.password
    api_url = var.unifi_config.api_url
    allow_insecure = true
  }

  # Variables needed for Unifi Provider
  module "unifi_setup" {
    source = "./terraform/unifi" 
    unifi_config = var.unifi_config_module
  }

  # Provider for Proxmox
  provider "proxmox" {
    pm_api_url = var.proxmox_config.address
    pm_api_token = var.proxmox_config.api_token
    pm_api_token_secret = var.proxmox_config.api_token_secret
    pm_tls_insecure = true
  }

  module "proxmox_setup" {
    source = ./terraform/proxmox
    proxmox_config = var.proxmox_config_module
  }


}
