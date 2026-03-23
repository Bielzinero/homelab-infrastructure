#!/bin/bash

# ----------------------------------
# System Maintenance Automation
# Purpose:
# Performs routine maintenance tasks
# for a Linux server.
# ----------------------------------

echo "Starting system maintenance..."

echo "Updating package lists..."
sudo apt update

echo "Upgrading installed packages..."
sudo apt upgrade -y

echo "Removing unused packages..."
sudo apt autoremove -y

echo "Cleaning package cache..."
sudo apt clean

echo "Checking disk usage..."
df -h

echo "Checking system uptime..."
uptime

echo "Maintenance completed."
