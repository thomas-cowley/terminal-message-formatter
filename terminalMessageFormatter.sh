#!/bin/bash

# generates a line long padded message
# arg1 = message, arg2 = padder
# for example, called with "test" and "=" would render:
# |===== test =====|
function generateSingleMessage () {
  # $1 is first parameter, representing the message
  # $2 is second parameter, representing the padder
  message=$1;
  padder=$2;

  # calculate padding first and last widths
  paddingHalfWidth=($(tput cols)-${#message})/2;

  # print first half of the padder
  for ((i=0; i < $paddingHalfWidth; i++)); do
    printf "$padder";
  done

  # print the given message
  printf "$message";
  
  # print second half of the padding
  for ((i=0; i < $paddingHalfWidth; i++)); do
    printf "$padder";
  done
}

# line break for formatting
echo "";

# start message goes here
generateSingleMessage " Useful Commands and Aliases " "=";
echo "";

# print out all parameters if this is called with parameters
for arg; do
  generateSingleMessage "$arg" " ";
  echo "";
done

# end message goes here
generateSingleMessage " Have a good day! " "=";
echo "";

# line break for formatting
echo "";
