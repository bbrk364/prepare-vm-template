# Clear SSH host keys.
cd /etc/ssh
sudo rm ssh_host_*

# Clear Machine ID.
sudo truncate -s 0 /etc/machine-id

# Install cloud init packages.
sudo apt install cloud-init cloud-initramfs-copymods cloud-initramfs-dyn-netconf

# Update existing packages.
sudo apt upgrade

# Reset cloud init just in case this VM was generated from a previously ran cloud-init image.
cloud-init clean -l

# Potentially clear/cleanup packages.
sudo apt clean
sudo apt autoremove

echo "VM prepare script completed succesfullly. This VM can now be converted to a template"
