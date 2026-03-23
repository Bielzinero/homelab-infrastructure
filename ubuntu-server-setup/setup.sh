#!/bin/bash

# ----------------------------------
# Ubuntu Server Setup Script
# Author: Bielzinero
# Purpose:
#   Initializes a fresh Ubuntu server with
#   essential administration tools and firewall.
# ----------------------------------

echo "Updating system..."
sudo apt update && sudo apt upgrade -y

echo "Installing essential packages..."
sudo apt install -y \
    curl \
    wget \
    git \
    htop \
    ufw \
    unzip \
    net-tools \
    ca-certificates \
    software-properties-common

echo "Configuring firewall..."
sudo ufw allow OpenSSH
sudo ufw allow http
sudo ufw allow https
sudo ufw --force enable

echo "Setting timezone..."
sudo timedatectl set-timezone Europe/Stockholm

echo "Cleaning up..."
sudo apt autoremove -y

echo "Setup complete."
