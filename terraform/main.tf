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
    username = var.unifi_username
    password = var.unifi_password
    api_url = var.unifi.api_url
    allow_insecure = true
  }

  # Variables needed for Unifi Provider
  module "unifi_network" {
  source = "./terraform/unifi" 

  unifi_home_network_vlan = var.unifi_home_network_vlan
  unifi_stationary_pc_address = var.unifi_stationary_pc_address
  # Not Finished
  }


  # Provider for Proxmox
  provider "proxmox" {
    pm_api_url = var.unifi_proxmox_address
    pm_api_token = var.unifi.proxmox_api_token
    pm_api_token_secret = var.unifi.proxmox_api_token_secret
    pm_tls_insecure = true
  }


}
