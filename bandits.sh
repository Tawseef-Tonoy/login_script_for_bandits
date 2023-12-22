#!/bin/bash

read -p "Enter your Bandit project username: " username
read -s -p "Enter your Bandit project password: " password
echo
server="bandit.labs.overthewire.org"
port=2220
sshpass -p "$password" ssh -o StrictHostKeyChecking=no -p $port "$username@$server"
