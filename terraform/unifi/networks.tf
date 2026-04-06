# Trusted home network
resource "unifi_network" "home_network" {
    name                         = "Home Network"
    purpose                      = "corporate"
    vlan_id                      = 1
    subnet                       = var.unifi_config.home_network_vlan
    dhcp_start                   = var.unifi_config.home_network_dhcp_start
    dhcp_stop                    = var.unifi_config.home_network_dhcp_end
}

# Honeypot VLAN for secure management
resource "unifi_network" "honeypot" {
    name                         = "Honeypot-Net"
    purpose                      = "vlan-only"
    subnet                       = var.unifi_config.honeypot_network_vlan
    vlan_id                      = 20
    dhcp_start                   = var.unifi_config.honeypot_network_dhcp_start
    dhcp_stop                    = var.unifi_config.honeypot_network_dhcp_end
    internet_access_enabled      = true
    intra_network_access_enabled = false
}