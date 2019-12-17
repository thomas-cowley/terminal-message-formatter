#!/bin/bash

function messageLong () {
  # $1 is first parameter, message
  # $2 is second parameter, padder

  # print first half of the padder
  for (( i=0; i < ($(tput cols)-${#1})/2; i++)); do
    printf "$2";
  done

  # print the message given
  printf "$1";
  
  # print the second half of the padding
  for (( i=0; i < ($(tput cols)-${#1})/2; i++)); do
    printf "$2";
  done
}

echo ""; # line break for prettier formatting

# Top line here
messageLong " Useful Commands and Aliases " "=";
echo "";

# print out all parameters if this is desired as an external program
for arg; do
  messageLong "$arg" " ";
  echo "";
done

# Final line here
messageLong " Have a good day! " "=";
echo "";

echo ""; # line break for prettier formatting