#!/bin/bash

# Function to manage users
UserManagement() {
    if [ "$1" == "-c" ] || [ "$1" == "--create" ]; then
        echo "Creating a new user..."
        read -p "Enter username: " username

        # Check if user exists
        if id "$username" &>/dev/null; then
            echo "User '$username' already exists!"
        else
            sudo useradd -m "$username"
            read -sp "Enter password: " password
            echo 
            echo -e "$password\n$password" | sudo passwd "$username"
            echo "User '$username' created successfully!"
        fi

    elif [ "$1" == "-d" ] || [ "$1" == "--delete" ]; then
        echo "Deleting a user..."
        read -p "Enter username to delete: " username

        # Check if user exists
        if id "$username" &>/dev/null; then
            sudo userdel -r "$username"
            echo "User '$username' deleted successfully!"
        else
            echo "User '$username' does not exist!"
        fi

    elif [ "$1" == "-r" ] || [ "$1" == "--reset" ]; then
        echo "Resetting user password..."
        read -p "Enter username: " username

        # Check if user exists
        if id "$username" &>/dev/null; then
            read -sp "Enter new password: " password
            echo 
            echo -e "$password\n$password" | sudo passwd "$username"
            echo "Password reset for user '$username'!"
        else
            echo "User '$username' does not exist!"
        fi

    elif [ "$1" == "-l" ] || [ "$1" == "--list" ]; then
        echo "Listing all users..."
        awk -F ':' '{print $1, $3, $6}' /etc/passwd | column -t

    elif [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
        echo "User Management Script"
        echo "-c, --create : Create a new user"
        echo "-d, --delete : Delete a user"
        echo "-r, --reset  : Reset a user's password"
        echo "-l, --list   : List all users"
        echo "-h, --help   : Show help message"

    else
        echo "Invalid option! Use -h or --help for usage information."
    fi
}

# Run the function with the argument
UserManagement "$1"
