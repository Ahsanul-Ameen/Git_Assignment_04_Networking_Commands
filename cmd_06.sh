#!/bin/bash

# List of ports to enable (add your ports here)
ports_to_enable=("80" "3306")

# Enable the specified ports using sudo
for port in "${ports_to_enable[@]}"; do
    sudo ufw allow $port/tcp
    echo "Port $port/tcp has been enabled."
done

# Apply UFW rules using sudo
sudo ufw --force enable

# Display the status of UFW using sudo
sudo ufw status

echo "UFW has been configured to allow the specified ports."
