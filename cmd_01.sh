#!/bin/bash

# Prompt the user for a domain name
read -p "Enter a domain name: " domain

# Use nslookup to find the IP address
ip_address=$(nslookup "$domain" | awk '/^Address: / { print $2 }')

# Display the IP address
echo "IP address (v4 & v6) of $domain: $ip_address"
