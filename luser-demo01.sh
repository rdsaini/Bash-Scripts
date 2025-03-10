#!/bin/bash

# This script displays various information to the screen 


# Display Hello 

echo 'Hello'

# Display value of variable 

WORD='Script'

#Demonstrate that value using variable 


echo "$WORD"

# Demonstrate that single quoues cause variables to not get exapended 

echo '$WORD'

# Combine the variable with hard-coded text. 

echo "this is a shell $WORD"

# Display the contents of the variable using an alternative syntax. 

echo "this is a shell ${WORD}"

# Append text to the variable 

echo "${WORD}ing is fun!"

# show how NOT to append text to a variable
# this doesn't work 

echo "$WORDing is fun!"

# Creating a new Varialbe 
ENDING='ed'

echo "This is ${WORD}${ENDING}"

# Change the values stored in the ENDING variable ( Reassignment )
ENDING='ing'

echo "${WORD}${ENDING} is fun!!"

# Reassign value to ENDING
ENDING='s'
echo "You are going to write many ${WORD}${ENDING} in this class"
