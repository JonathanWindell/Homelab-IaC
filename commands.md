# Commands for Terraform & Ansible

## Terraform

| Command | Explanation |
| ------- | ----------- |
| `terraform init` | Initialises Terraform & fetches providers to create enviroment. |
| `terraform validate` | Looks for any errors in the build. |
| `terraform plan` | Initialises execution without running anyting. |
| `terraform apply` | Eexcute Terraform plan. |
| `terraform destroy` | Destroys everything created by Terraform. |
| `terraform fmt` | Formats code automatically. |

## Ansible

| Command | Explanation |
| ------- | ----------- |
| `ansible all -m ping -i inventory.ini` | Pings to see if Ansible reaches containers.  |
| `ansible-playbook -i inventory.ini setup.yml` | Executes playbook and rolls out configuration.  |
| `ansible-vault encrypt <folder_name>/<file_name>` | Locks: Encrypts variable file with password. |
| `ansible-vault edit <folder_name>/<file_name>` | Edits: Open encrypted file for editing. |
| `ansible-inventory -i inventory.ini --list` | Inspection: Shows how Ansible handled inventory & variables.  |