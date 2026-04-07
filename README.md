# Homelab-IaC
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![Ansible](https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white)
![Ubiquiti](https://img.shields.io/badge/ubiquiti-%230559C9.svg?style=for-the-badge&logo=ubiquiti&logoColor=white)
![Proxmox](https://img.shields.io/badge/proxmox-proxmox?style=for-the-badge&logo=proxmox&logoColor=%23E57000&labelColor=%232b2a33&color=%232b2a33)


# Highlights
- **Boilerplate:** Need some inspiration for your own IaC? Use this as a boilerplate to get things started!
- **Clean Architecture:** This repository follows a structured architecture with no hardcoded valueds and seperatation of concerns to create easy maintainability.

# Overview
This project contains my personal IaC for my own homelab. I often found myself google the same questions like "how to setup VM in Proxmox" etc. I realised that by creating a personal "truth" as I like to call it on how my homelab is set up I never have to google these questions again. Using IaC also saves one self a lot of time. 

# Author

I'm Jonathan and I develop projects in my sparetime that help myself and others become better and more efficient developers!
- [Linkedin](https://www.linkedin.com/in/jonathan-windell-418a55232/)
- [Portfolio](https://portfolio.jonathans-labb.org/)

# Diagram
Create .d2 diagram

# File Structure
```
.
├── ansible/
│   ├── playbook/
│   │   └── group_vars
│   └── templates 
├── documentation   # Manual Setup Steps
├── terraform/
│   ├── proxmox     # Setup for Proxmox
│   └── unifi       # Setup for Unifi
├── .gitignore      # Files Git should Ignore
├── LICENSE         # MIT License
├── README          # Overview & Usage
└── Requirements    # Needed Packages
```

# Usage Instructions
Use it as biolerplate

Create .tfvars file

Create .gitignore

Install Ansible (venv) NOTE WSL or Linux

Install Terraform NOTE Add Enviroment Variable

# Installations Instructions
To use this code you first have to modify it to suit your infrastructure. Documentation that helped me is linked below. 

- [Terraform Documentation](https://registry.terraform.io/browse/providers)
- [Ansible Documentation](https://docs.ansible.com/projects/ansible/latest/index.html)

Installing against server & router etc. 

# License

Distributed under the MIT License. See `LICENSE` file for more information.



