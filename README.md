# Prepare Cloud Init VM
Script that can be used to prepare a Virtual Machine (VM) to be converted to a VM template. The script will setup all of the required cloud-init dependencies. When creating a VM to be turned into a template, there are a number of steps and conditions that have to be met in order for [cloud-init](https://cloud-init.io/) to properly setup a new VM once it has been cloned from a template.

## Usage
1. Create a linux-based VM (using Proxmox or some other Hypervisor)
2. Run the following command
```bash
sudo curl -fL https://raw.githubusercontent.com/rustygreen/prepare-vm-template/main/setup.sh | sh -
```
3. Stop the VM and convert it to a template.

## General Steps
The following steps are taken to prepare the VM to be converted to a template with `cloud-init` options.
1. Clear the SSH host keys.
2. Clear the Machine ID.
3. Install the cloud init packages (if they are not already).
4. Update all packages.
5. Reset `cloud-init`, just in case this template was generated from a VM that was previously initialized with `cloud-init`
6. Cleanup any unused packages.

## Resources
The following is a list of resources related to this topic.
- https://cloud-init.io/
- https://www.youtube.com/watch?v=t3Yv4OOYcLs
