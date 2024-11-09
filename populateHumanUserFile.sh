#!/bin/bash

# File where human users will be stored
human_users_file="/home/jasonrodriguez/practiceFolder/humanUsers.txt"

> "$human_users_file"

for user in $(cut -d: -f1 /etc/passwd); do
	userUID=$(id -u "$user")
	
	if [ "$userUID" -ge 1000 ]; then
		echo "$user" >> "$human_users_file"
	fi
done

echo "List of human users has been saved to $human_users_file"


