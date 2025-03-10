#!/bin/bash

# This script creates an account on the local system.
# you will be prompted for the account name and password.


# Ask for the user name

read -p "Enter your user name: "  USERNAME

# Ask for the real name

read -p  "Enter your name: "  YOURNAME

# Ask for the password. 

read -p "Enter the password: "  PASSWORD

# Create the user

#echo $USERNAME
#echo $YOURNAME
#echo $PASSWORD


useradd -c "${YOURNAME}" -m ${USERNAME}

# Set the password for the user

echo ${PASSWORD} | passwd --stdin ${USERNAME}

# give user sudo permissions 

usermod -aG wheel ${USERNAME}

# Force password change on first login. 

passwd -e ${USERNAME}
