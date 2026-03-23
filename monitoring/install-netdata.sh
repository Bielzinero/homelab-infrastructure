#!/bin/bash

echo "Installing Netdata monitoring agent..."

sudo apt update
sudo apt install -y curl

bash <(curl -Ss https://my-netdata.io/kickstart.sh)

echo "Netdata installation complete."
echo "Access monitoring dashboard at:"
echo "http://localhost:19999"
