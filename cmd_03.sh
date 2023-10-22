#!/bin/bash

# Use ifconfig to find the private IP address
private_ip=$(ip addr | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*/[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*/[0-9]*' | grep -v '127.0.0.1')

# Display the private IP address
echo "Your private IP address is: $private_ip"
