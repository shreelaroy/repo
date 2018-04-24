#!/bin/sh

echo "Welcome to MasterMind"
echo "Please select your option"
echo "1) Linux user password reset"
echo "2) Linux Log housekeeping"
echo "3) Database Partition Management"

while :
do
  read INPUT_STRING
  case $INPUT_STRING in
        1)
                echo "Hello yourself!"
                sh /iac/repo/scripts/get_details.sh
                ;;
        2)
                echo "See you again!"
                ansible-playbook housekeep.yml
                ;;
        *)
                echo "Sorry, this piece of work is still in progress"
                ;;
  esac
done
echo
echo "That's all folks!"
