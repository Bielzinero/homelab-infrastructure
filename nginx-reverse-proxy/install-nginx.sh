#!/bin/bash

echo "Updating system..."
sudo apt update

echo "Installing Nginx..."
sudo apt install -y nginx

echo "Enabling Nginx..."
sudo systemctl enable nginx
sudo systemctl start nginx

echo "Allowing Nginx through firewall..."
sudo ufw allow 'Nginx Full'

echo "Nginx installed successfully."

sudo systemctl status nginx --no-pager
