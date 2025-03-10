#!/bin/bash

# This script creates an account on the local system.
# you will be prompted for the account name and password.
# The username, password and host for the account will be displayed 

# make sure the script is being executed with superuser priviliges.

if [[ "${UID}" -ne 0 ]]
then 
  echo 'Please run with sudo or as root'
  exit 1
fi

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

# Check to see if the useradd command succeeded
# we don't want to tell the user that an account was created when it hasn't been. 

if [[ "${?}" -ne 0 ]]
then 
  echo 'The account has not been created'
  exit 1 
fi 

# Force password change on first login. 

passwd -e ${USERNAME}

if [[ "${?}" -ne 0 ]]
then 
  echo 'The password for the account could not be set.'
  exit 1 
fi 

# Display the username, password, and the hostname where the user  was created 

echo 'Username: '
echo ${USERNAME}
echo
echo 'Password: '
echo ${PASSWORD}
echo
echo 'Hostname: '
echo ${HOSTNAME}
exit 0

#
