#!/bin/bash

# Array of directory names
directories=("git" "jenkins" "linux" "docker" "kubernetes" "ansible")

 #Loop to create directories and Readme.md file
for dir_name in "${directories[@]}"; do
    mkdir "$dir_name"  # Create the directory
        echo "This is the Readme file for $dir_name" > "$dir_name/Readme.md" # Create Readme.md with content
            echo "Created $dir_name and $dir_name/Readme.md" # Confirmation message
            done
            
