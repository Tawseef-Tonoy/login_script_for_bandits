#!/bin/bash

# Prompt for username
read -p "Enter your Bandit project username: " username

# Prompt for password
read -s -p "Enter your Bandit project password: " password
echo

# Set the server address and port
server="bandit.labs.overthewire.org"
port=2220

# SSH login command
sshpass -p "$password" ssh -o StrictHostKeyChecking=no -p $port "$username@$server"
