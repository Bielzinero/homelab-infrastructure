#!/bin/bash

BRIDGE_NAME=br0
INTERFACE=eth0

echo "Installing bridge utilities..."
sudo apt update
sudo apt install -y bridge-utils

echo "Creating bridge interface..."

sudo ip link add name $BRIDGE_NAME type bridge
sudo ip link set $INTERFACE master $BRIDGE_NAME

sudo ip link set $INTERFACE up
sudo ip link set $BRIDGE_NAME up

echo "Bridge $BRIDGE_NAME created using interface $INTERFACE"

echo "Verify with:"
echo "ip addr show $BRIDGE_NAME"
