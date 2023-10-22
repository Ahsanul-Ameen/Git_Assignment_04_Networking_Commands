#!/bin/bash

# Network configuration file path
CONFIG_FILE="/etc/netplan/network-config.yaml"

# Interface name
INTERFACE="wlp3s0"

# Static IP address configuration
IP_ADDRESS="192.168.10.199/24"
GATEWAY="192.168.1.1"
DNS_SERVERS="8.8.8.8,8.8.8.4"

# Create the network configuration file
echo "network:
  version: 2
  renderer: NetworkManager
  ethernets:
    $INTERFACE:
      dhcp4: no
      addresses: [$IP_ADDRESS]
      gateway4: $GATEWAY
      nameservers:
        addresses: [$DNS_SERVERS]" | sudo tee $CONFIG_FILE > /dev/null

# Apply the network configuration
sudo netplan apply

echo "Static IP address configuration applied successfully."