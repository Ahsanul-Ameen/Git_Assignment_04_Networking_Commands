#!/bin/bash

# On the VM, open the hosts file to map the hostname "your_name.com" to the VM's IP address.
# Edit the /etc/hosts file:
sudo nano /etc/hosts



# Add an entry like this to map "your_name.com" to the VM's IP address:\

VM_IP_ADDRESS your_name.com


# Do the same for host machine

VM_IP_ADDRESS your_name.com


# Test your configuration using:
sudo nginx -t


# reload nginx
sudo systemctl reload nginx


# Open a web browser and navigate to http://your_name.com. You should see the custom Nginx page with your name on it.
