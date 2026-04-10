# Manual Setup: Proxmox Helper Scripts

## 1.0 Overview
This guide covers services deployed using [Proxmox Helper Scripts](https://community-scripts.org/). These scripts are executed in the Proxmox VE shell to automate the creation and initial configuration of LXC containers.

---

## 2.0 Service Catalog
| Service | Category | Script Link | Default Port |
| :--- | :--- | :--- | :--- |
| **Nginx Proxy Manager** | Networking | [Link](https://community-scripts.org/scripts/nginxproxymanager) | 81 |
| **Adguard Home** | Security/DNS | [Link](https://community-scripts.org/scripts/adguard) | 3000 |
| **Uptime Kuma** | Monitoring | [Link](https://community-scripts.org/scripts/uptimekuma) | 3001 |
| **Grafana** | Visualization | [Link](https://community-scripts.org/scripts/grafana) | 3000 |
| **Kimai** | Time Tracking | [Link](https://community-scripts.org/scripts/kimai) | 8001 |
| **Homepage** | Dashboard | [Link](https://community-scripts.org/scripts/homepage) | 3000 |

---

## 3.0 Standard Installation Steps

### 3.1 Primary Services
For all services listed in the catalog:
1. Run the script via the **Proxmox VE Shell**.
2. Follow the wizard (Default settings are recommended for LXC).
3. Once completed, access the Web UI via the provided IP.
4. **Action:** Create Admin account & perform initial login.

### 3.2 Post-Install: Tailscale (Optional)
For services requiring remote access (NPM, Adguard, Uptime Kuma):
1. Run the [Tailscale Script](https://community-scripts.org/scripts/add-tailscale-lxc) in the Proxmox shell.
2. Select the target LXC container.
3. Inside the LXC console, run: `tailscale up`.
4. Authenticate via the generated URL.

---

## 4.0 Service Specific Notes

### 4.1 Monitoring Stack (Prometheus & Grafana)
* **Prometheus:** [Script](https://community-scripts.org/scripts/prometheus) - Handles data collection.
* **Alertmanager:** [Script](https://community-scripts.org/scripts/prometheus-alertmanager) - Handles notification logic.
* **Glances:** [Script](https://community-scripts.org/scripts?q=Glances) - System monitoring (Install on target hosts).

### 4.2 Utility Services
* **File Browser:** [Script](https://community-scripts.org/scripts/filebrowser) - Install within an existing LXC to manage files via Web UI.
* **Linkwarden:** [Script](https://community-scripts.org/scripts/linkwarden) - Self-hosted bookmark manager.
* **Syncthing:** [Script](https://community-scripts.org/scripts/syncthing) - Continuous file synchronization.