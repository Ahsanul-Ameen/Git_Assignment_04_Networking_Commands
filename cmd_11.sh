#!/bin/bash

# Define the name you want to display on the web page
name="Your Name"

# Create the index.html file
echo '<!DOCTYPE html>
<html>
  <head>
    <title>$name</title>
  </head>
  <body>
    <h1>$name</h1>
  </body>
</html>' | sudo tee /var/www/html/index.html

# Update Nginx configuration to use the custom index.html
sudo sed -i 's/root \/var\/www\/html;/root \/var\/www\/html; index index.html;/' /etc/nginx/sites-available/default

# Test Nginx configuration
sudo nginx -t

# Reload Nginx to apply the changes
sudo systemctl reload nginx

# Provide feedback to the user
echo "Custom Nginx page with '$name' has been set up."
