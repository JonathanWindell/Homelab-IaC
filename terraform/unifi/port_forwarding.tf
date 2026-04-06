# Port forwarding rules

# HTTPS Rule for personal portfolio
resource "unifi_port_forward" "home_network_portfolio" {
    name    = "Portfolio HTTPS"
    src_ip = "any" 
    fwd_ip    = var.unifi_config.personal_portfolio_address
    fwd_port  = "443"
    dst_port  = "443"
    protocol  = "tcp"
}

# HTTP Rule for Honeypot
resource "unifi_port_forward" "home_network_honeypot" {
    name    = "Web Honeypot External"
    src_ip = "any"
    fwd_ip    = var.unifi_config.raspberry_pi_address
    fwd_port  = "8080"
    dst_port  = "8082"
    protocol  = "tcp"
}
