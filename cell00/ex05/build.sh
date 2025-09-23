#!/bin/bash

# Check if any arguments are provided
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <folder_name1> [folder_name2] ..."
    echo "This script creates directories by prepending 'ex' to each provided name."
    exit 1
fi

# Loop through all provided arguments
for folder_name in "$@"; do
    # Prepend "ex" to the folder name
    new_folder_name="ex${folder_name}"

    # Create the directory
    mkdir -p "$new_folder_name"

    # Check if the directory was created successfully
    if [ $? -eq 0 ]; then
        echo "Created directory: $new_folder_name"
    else
        echo "Failed to create directory: $new_folder_name"
    fi
done