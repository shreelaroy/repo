echo -e "Enter the username for password reset:\n"

read username

echo -e "\n"

echo -e "Enter the hostname for the above user:\n"

read hostname

echo -e "\n"

echo -e "Enter your email id:\n"

read mailid

echo -e "\n"

 
mv $PWD/hostname_pwreset* $PWD/archive/hostname_pwreset__`date +%Y%m%d-%H:%M:%S`

mv $PWD/username_pwreset* $PWD/archive/username_pwreset__`date +%Y%m%d-%H:%M:%S`

mv $PWD/mailid_pwreset* $PWD/archive/mailid_pwreset__`date +%Y%m%d-%H:%M:%S`

 

(

echo ---

echo host_for_passwd: $hostname

)>"hostname_pwreset.yml"


(

echo ---

echo user_name: $username

)>"username_pwreset.yml"

 

(

echo ---

echo user_name: $mailid

)>"mailid_pwreset.yml"

 

 

cd /iac/repo

sudo git add *

sudo git commit -m " For user: $mailid"

git commit origin master
