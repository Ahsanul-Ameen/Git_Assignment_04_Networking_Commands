#!/bin/bash

# Update package lists
sudo apt update

# Install Nginx
sudo apt install -y nginx

# Start Nginx
sudo systemctl start nginx

# Enable Nginx to start on boot
sudo systemctl enable nginx

# Open the firewall for HTTP traffic
sudo ufw allow 'Nginx HTTP'

# Display status message
echo "Nginx is installed and running. The firewall is open for HTTP traffic."

# Get the VM's IP address and display it
ip_address=$(hostname -I | cut -d' ' -f1)
echo "You can access the default Nginx page by entering http://$ip_address in your web browser."

# Optional: Show Nginx version
nginx_version=$(nginx -v 2>&1 | cut -d'/' -f2)
echo "Nginx version $nginx_version is installed."

# Optional: Customize the Nginx configuration if needed
# sudo nano /etc/nginx/sites-available/default

# Optional: Restart Nginx after making configuration changes
# sudo systemctl restart nginx
