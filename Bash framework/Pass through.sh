#!/bin/bash

read -p "Enter hash to crack: " hash

while read -r pass
do
  currenthash=$(echo $pass | sha256sum)
  if [[ $currenthash == $hash ]]; then
    echo "The password is ${pass}"
    break
  fi
done<RockYou.txt 