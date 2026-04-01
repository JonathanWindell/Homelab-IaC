# Firewall Rules

# Stateful Firewall 
resource "unifi_firewall_rule" "Any" {
    name = "Allow Established/Related"
    action = "accept"
    ruleset = "LAN-IN"
    rule_index = 20001

    src_address = "all"
    dst_address = "all"

    state_established = true
    state_related     = true
}

# Stationary PC to Honeypot Rule
resource "unifi_firewall_rule" "ssh_pc" {
    name = "Pc to Honeypot"
    action = "accept"
    ruleset = "LAN-IN"
    rule_index = 20000

    protocol = "tcp"
    dst_port = "22"
    src_address = var.unifi_stationary_pc_address
    dst_address = var.unifi_raspberry_pi_address
}

# Laptop to Honeypot Rule
resource "unifi_firewall_rule" "ssh_laptop" {
    name = "Laptop to Honeypot"
    action = "accept"
    ruleset = "LAN-IN"
    rule_index = 20002

    protocol = "TCP"
    dst_port = "22"
    src_address = var.unifi_gateway_address
    dst_address = var.unifi_raspberry_pi_address
}

resource "unifi_firewall_rule" "Information" {
    name = "Honeypot to Wazuh"
    action = "accept"
    ruleset = "LAN-IN"
    rule_index = 20003

    protocol = "tcp"
    dst_port = "1514,1515"
    src_address = var.unifi_raspberry_pi_address
    dst_address = var.unifi_wazuh_manager_address
}