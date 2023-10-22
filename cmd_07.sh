#!/bin/bash

# URL of the file to download
file_url="https://github.com/Ahsanul-Ameen/Git_Assignment_04_Networking_Commands/archive/refs/heads/main.zip"

# Destination file name
output_file="downloaded_file.zip"

# Download the file using wget
wget "$file_url" -O "$output_file"

# Check the exit status of wget
if [ $? -eq 0 ]; then
    echo "Download successful. The file is saved as $output_file."
else
    echo "Download failed."
fi
