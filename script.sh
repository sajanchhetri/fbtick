#!/bin/bash

echo "put your full name with space"
read "name"
echo "hello $name"
file="black.txt"

# Check if the file exists
if [ -f "$file" ]; then
    # Use sed command to replace "subject" with $name in the file
    sed -i "s/subject/$name/g" "$file"
    echo "Replacement successful."
else
    echo "File $file not found."
fi
clear
cat black.txt
