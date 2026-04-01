# Port forwarding rules

# HTTPS Rule for personal portfolio
resource "unifi_port_forward" "home network" {
    name    = "Portfolio HTTPS"
    src_shelf = "wan" 
    fwd_ip    = var.unifi_config.personal_portfolio_address
    fwd_port  = "443"
    dst_port  = "443"
    protocol  = "tcp"
}

# HTTP Rule for personal portfolio
resource "unifi_port_forward" "home network" {
    name    = "Web Honeypot External"
    src_shelf = "wan"
    fwd_ip    = var.unifi_config.raspberry_pi_address
    fwd_port  = "8080"
    dst_port  = "8082"
    protocol  = "tcp"
}

# Rule for Honeypot 
resource "unifi_network" "honeypot networks" {
    name = "Web Honeypot"
    vlan_id = 20

    wan = {
        interface = "wan"
        port = "8082"
    }

    forward = {
        ip_adress = var.unifi_config.raspberry_pi_address
        port = "8080"
    }
}