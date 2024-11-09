#!/bin/bash

echo "Enter the name of the user you want to add"
read userToAdd
if id "$userToAdd" &>/dev/null; then
	echo "User already exists, choose a different name."
	while true; do
		echo "Enter the name of the user you want to add"
		read userToAdd
		if id "$userToAdd" &>/dev/null; then
			echo "User already exists, choose a different name."
		else
			break
		fi

	done	
fi

echo "Proceeding to add user: $userToAdd"
sudo adduser $userToAdd

while true; do
	echo "Enter your new password"
	read passwordGiven
	if { printf "$userToAdd:$passwordGiven" | sudo chpasswd; }; then
		echo "password changed"
		break
	else
		echo "error with password, try a different password"
	fi
done
echo "Script complete"

