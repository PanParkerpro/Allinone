#!/bin/bash

read -p "Enter URL: " url1
script="<script>alert(1)</script>"
content=$(GET "https://${url1}${script}")
if [[ $content == *$script* ]] 
then
  echo "[+] Vulnerable :D"
else
  echo "[-] Not Vulnerable :("
fi
