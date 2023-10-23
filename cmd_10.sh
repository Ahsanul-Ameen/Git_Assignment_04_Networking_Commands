#!/bin/bash

# Define MySQL username and database name
mysql_user="your_username"
database_name="your_database_name"

# Prompt for MySQL password securely
read -s -p "Enter MySQL password for $mysql_user: " mysql_password
echo  # Add a newline for clarity

# Try to connect to MySQL and start the MySQL command-line client
mysql -u "$mysql_user" -p"$mysql_password" "$database_name"

# Check the exit status to determine if the connection was successful
if [ $? -eq 0 ]; then
  echo "Successfully connected to MySQL."
else
  echo "Failed to connect to MySQL. Please check your credentials and MySQL configuration."
fi
