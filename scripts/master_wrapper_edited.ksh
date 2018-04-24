#!/bin/sh

echo "-------------------------------------"
echo "Welcome to MasterMind"
echo "-------------------------------------"
echo "Please select your option"
echo "1) Linux user password reset"
echo "2) Linux Log housekeeping"
echo "3) Database Partition Management"
echo "-------------------------------------"
while :
do
  read INPUT_STRING
  case $INPUT_STRING in
        1)
                echo "Hello yourself!"
                sh /iac/repo/scripts/get_details.sh
                break
                ;;
        2)
                echo "See you again!"
                ansible-playbook housekeep.yml
                break
                ;;
        *)
                echo "Sorry, this piece of work is still in progress"
                break
                ;;
  esac
done
echo
echo "That's all folks!"
