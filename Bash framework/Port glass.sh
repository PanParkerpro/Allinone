#!/bin/bash

read -p "Enter IP address: " ip

for port in {1..6000}
do
  echo >>/dev/tcp/$ip/$port && echo "Port $port open!" >> openports.txt
done