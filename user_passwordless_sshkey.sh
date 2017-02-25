#!/bin/bash
#this script creates a user without password in the default homefolder
#and prepares the .ssh folder and authorized_keys file with the correct permissions

echo "Type user to add:"
read user
ssh="/home/$user/.ssh"
adduser --disabled-password --gecos "" $user
mkdir $ssh
chmod 700 $ssh
touch $ssh/authorized_keys
chmod 600 $ssh/authorized_keys
chown -R $user:$user $ssh
