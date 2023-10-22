#!/bin/bash

# Use curl to fetch the public IP address from ifconfig.me
public_ip=$(curl -s ifconfig.me)

# Display the public IP address
echo "Your public IP address is: $public_ip"
