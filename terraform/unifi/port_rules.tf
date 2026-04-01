# Port rules

# Port rules for UCG Ultra Router
resource "unifi_device" "ucg_ultra" {
    mac = var.unifi_config.ucg_ultra_router_mac
    name = "UCG Ultra Router"

    port_override {
        number = 1
        name = "USW Flex"
    }

    port_override {
        number = 2 
        name = "Raspberry PI: Honeypot"
    }

    port_override {
        number = 3
        name = "HP Prodesk: Proxmox Server"
    }
}

# Port rules for USW Flex Switch
resource "unifi_device" "usw_flex" {
    mac = var.unifi_config.usw_flex_switch_mac
    name = "USW Flex Switch"

    port_override {
        number = 1
        name = "Uplink: USW Flex"
    }

    port_override {
        number = 2
        name = "Ugreen NAS"
    }
}
