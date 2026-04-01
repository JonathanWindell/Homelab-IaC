terraform {
  required_providers {
    unifi = {
      source = "paultyng/unifi"
      version = "0.36.0" # Kontrollera senaste versionen
    }
  }

  provider "unifi" {
    username = var.unifi_username
    password = var.unifi_password
    api_url = var.unifi.api_url
    allow_insecure = true
  }

  provider "proxmox" {
    pm_api_url = var.
    pm_api_token = var.
    pm_api_token_secret = var.
    pm_tls_insecure = true
  }
}
