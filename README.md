# Homelab-IaC
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![Ansible](https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white)
![Ubiquiti](https://img.shields.io/badge/ubiquiti-%230559C9.svg?style=for-the-badge&logo=ubiquiti&logoColor=white)
![Proxmox](https://img.shields.io/badge/proxmox-proxmox?style=for-the-badge&logo=proxmox&logoColor=%23E57000&labelColor=%232b2a33&color=%232b2a33)


# Highlights
- **Clean Architecture:** This repository follows a structured architecture with no hardcoded valueds and seperatation of concerns to create easy maintainability.
- **Ease of Use:** Using IaC I'm able to quick spin up configured LXC & VM:s without having to think of how they need to be set up or click around different settings.

# Overview
This project contains my personal IaC for my own homelab. I often found myself searching the same questions like "how to setup VM in Proxmox" etc. I realised that by creating a personal "truth" as I like to call it on how my homelab is set up I never have to google these questions again. Using IaC also saves one self a lot of time. 

# Author

I'm Jonathan and I develop projects in my sparetime that help myself and others become better and more efficient developers!
- [Linkedin](https://www.linkedin.com/in/jonathan-windell-418a55232/)
- [Portfolio](https://portfolio.jonathans-labb.org/)


# Project Structure
```
./
├── ansible/
│   ├── host_vars               # Contains secret values
│   ├── playbook/
│   │   └── group_vars          # Contains secret values
│   ├── templates               # Docker structures & values
│   ├── inventory.ini           # Contains IP & User for VM:s
│   ├── n8n_setup.yml           # Setup for n8n
│   ├── paperless_setup.yml     # Setup for paperless
│   ├── portfolio_setup.yml     # Setup for portfolio
│   └── torrent_setup.yml       # Setup for qbit-torrent
├── documentation               # Manual setup steps
├── terraform /
│   ├── proxmox                 # Setup for unifi
│   ├── unifi                   # Setup for unifi
│   ├── terraform.lock.hcl      # Information about providers
│   ├── provider.tf             # Providers & connections
│   ├── terraform.tfvars        # Contains secret value
│   └── variables.tf            # Creates objects for variables
├── .gitignore                  # Files Git should ignore
├── commands.txt                # Useful commands
├── LICENSE                     # MIT license
├── README.md                   # Overview & usage
└── Requirement.txt             # Needed packages
```

# Recommended Reading
Documentation used to create this repository

- [Terraform Documentation](https://registry.terraform.io/browse/providers)
- [Ansible Documentation](https://docs.ansible.com/projects/ansible/latest/index.html)

# License

Distributed under the MIT License. See `LICENSE` file for more information.



