#!/bin/bash

read -p "Enter IP address: " address

echo "Country: "; GET https://geolocation-db.com/json/${address} | jq -r .country_name
echo "Latitude: "; GET https://geolocation-db.com/json/${address} | jq -r .latitude
echo "Longitude: "; GET https://geolocation-db.com/json/${address} | jq -r .longitude
GET https://geolocation-db.com/json/${address}