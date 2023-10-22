#!/bin/bash

# Use ss to list open TCP and UDP ports
open_ports=$(ss -tuln)

# Display the open ports
echo "Open TCP and UDP ports:"
echo "$open_ports"
