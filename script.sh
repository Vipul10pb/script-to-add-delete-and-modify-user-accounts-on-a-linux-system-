#!/bin/bash

########         Create a new user and Passord      ########

 echo "please enter your username"
read username 
echo "please insert a user password"
read password

#create the user with a specified username
sudo useradd -m -s /bin/bash $username

#set the user's password 
echo "$username:password" | sudo chpasswd

echo "User '$username' has been created with the password '$password'"

########         Delete any specific user  ###########

echo "please insert a username you wish to delete "
read username 


# Delete the user with the specific username 
sudo userdel $username 

echo " user $username has been deleted "

############ to create a group ###########

echo "please enter a groupname you want to create "
read groupname 

echo " group $groupname has been created"

#group creation 
sudo groupadd $groupname

# to add a user in the group 

echo " enter username to add user to the group "
read user_name

#adding user to the group 
sudo usermod -G $groupname $user_name

echo " $user_name has been added to group $groupname" 


### to delete a group ####

echo " enter name of group you want to delete "
read groupname 

# deleting group 
sudo groupdel $groupname 

echo "Group $groupname has been successfully deleted "
