# Troubleshooting Guide

## Nginx not starting

Check service status:
sudo systemctl status nginx

Check configuration syntax:
sudo nginx -t

View logs:
sudo journalctl -u nginx

## VM networking issues

Verify bridge interface:
ip addr show br0

Check attached interfaces:
brctl show

Check connectivity:
ping gateway_ip

## Server connectivity problems

Check firewall:
sudo ufw status

Check open ports:
sudo ss -tulnp
