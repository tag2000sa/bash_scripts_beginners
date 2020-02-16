#!/bin/bash 

# File-Name: break_continue.sh
# This file was created on clear 02/17/20
# Signature: 202002.ORIGINAL
# Author: Turky Abdulaziz Saderaldin
# Subject: 

echo -e "\vSelect your favorite fruit juice:" 
fruit='apple pineapple orange watermelon strawberry blueberry blackberry cherry'
select order in $fruit
do
 case $order in
  "apple") echo -e "enjoy your $order juice.."; break;;
  "pineapple") echo -e "enjoy your $order juice.."; break;;
  "orange") echo -e "enjoy your $order juice.."; break;;
  "watermelon") echo -e "enjoy your $order juice.."; break;;
  "strawberry") echo -e "enjoy your $order juice.."; continue;;
  "blueberry") echo -e "enjoy your $order juice.."; continue;;
  "blackberry") echo -e "enjoy your $order juice.."; continue;;
  "cherry") echo -e "enjoy your $order juice.."; continue;;
 esac
done
