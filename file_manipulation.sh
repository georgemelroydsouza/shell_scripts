#!/bin/bash

########################################
#
# Author: George DSouza
# Title: File Manipulation
# Details: Write a script that takes a filename as input and checks if the file exists. 
#          If it does, it should display the file's content, and if not, it should create the file and prompt the user to enter some text to write into it.
#
#
########################################

set -xeo pipefail

# function to check if file exists
file_exists() {
    if [ -e "$1" ]; then
        return 0;
    else
        return 1;
    fi
}

display_file_contents () {
    echo "Displaying file contents of '$1'"
    cat "$1"
}

prompt_file_text () {
    echo "Enter the contents to save in file '$1' (Press Ctrl+D once done)"
    cat > "$1"
}

echo "Enter the filename"
read filename

if file_exists $filename; then
    display_file_contents $filename
    exit
fi

echo "'$filename' does not exists. Creating file..."
prompt_file_text $filename
echo "Filename '$filename' created with the entered text"

