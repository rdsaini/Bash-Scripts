#!/bin/bash 

# Displays UID and username of the user executing this script
# Displays if the user is the root user or not 

# Display the UID

echo "Your UID is ${UID}"

# Display the username 

USER_NAME=$(id -un)
echo "Your username is ${USER_NAME}"

# Display if user is root user or not

if [[ "${UID}" -eq 0 ]]
then 
  echo "You are a root."
else 
  echo "You are not a root user."
fi
