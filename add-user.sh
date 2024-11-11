#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root"
  exit 1
fi


if [ -z "$1" ]; then
  echo "Usage: $0 username email"
  exit 1
fi

USERNAME="$1"
EMAIL="$2"

if id "$USERNAME" &>/dev/null; then
  echo "User '$USERNAME' already exists"
  exit 1
fi


PASSWORD=$(openssl rand -base64 12)

useradd "$USERNAME"

echo "$USERNAME:$PASSWORD" | chpasswd


echo "Username: $USERNAME"
echo "Generated Password: $PASSWORD"
echo "User '$USERNAME' created successfully with the generated password."


SUBJECT="New User Account Created"
MESSAGE="Hello,\n\nA new user account has been created for you on the system.\n\nUsername: $USERNAME\nPassword: $PASSWORD\n\nPlease change your password upon first login."


echo -e "$MESSAGE" | mail -s "$SUBJECT" "$EMAIL"

if [ $? -eq 0 ]; then
  echo "Email sent to $EMAIL with the username and password."
else
  echo "Failed to send email."
fi


