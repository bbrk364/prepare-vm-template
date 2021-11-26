# Prepare Cloud Init VM
Script that can be used to prepare a Virtual Machine (VM) to be converted to a VM template. The script will setup all of the required cloud-init dependencies. When creating a VM to be turned into a template, there are a number of steps and conditions that have to be met in order for [cloud-init](https://cloud-init.io/) to properly setup a new VM once it has been cloned from a template.

## Usage
1. Create a linux-based VM (using Proxmox or some other Hypervisor)
2. Run the following command
```bash
curl -fL https://raw.githubusercontent.com/rustygreen/prepare-vm-template/main/setup.sh | sh -
```
