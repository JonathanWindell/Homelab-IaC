terraform {
  required_providers {
    unifi = {
      source = "paultyng/unifi"
      version = "0.36.0" # Kontrollera senaste versionen
    }
    proxmox = {
      source = “telmate/proxmox”
      version = “2.7.4” 
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
    config = var.unifi_config
  }

  # Provider for Proxmox
  provider "proxmox" {
    pm_api_url = var.unifi_proxmox_address
    pm_api_token = var.unifi.proxmox_api_token
    pm_api_token_secret = var.unifi.proxmox_api_token_secret
    pm_tls_insecure = true
  }


}
