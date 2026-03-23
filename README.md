# Homelab Infrastructure

This repository documents infrastructure setups and troubleshooting practices from my Linux homelab environment.

The goal of this project is to demonstrate practical system administration skills including server setup, networking, reverse proxy configuration, monitoring, backup automation, and incident troubleshooting.

---

## Components

### Ubuntu Server Setup
Basic initialization of a fresh Ubuntu server including:

- system updates
- essential administration tools
- firewall configuration using UFW

### Virtual Machine Networking
Example configuration of a Linux bridge interface allowing virtual machines to share the host network.

### Nginx Reverse Proxy
Installation and configuration of Nginx as a reverse proxy to route external HTTP traffic to internal services.

### Monitoring
System monitoring example using Netdata to observe:

- CPU usage
- memory usage
- disk activity
- network traffic

### Backup System
Simple automated backup script demonstrating compressed backups of important directories.

### Incident Response
Documentation of common infrastructure troubleshooting scenarios:

- Nginx service failure
- high CPU usage
- disk space exhaustion
- login/authentication failures

These examples demonstrate structured troubleshooting methodology for diagnosing server issues.

---

## Skills Demonstrated

- Linux server administration
- Virtual machine networking
- Reverse proxy configuration (Nginx)
- Firewall configuration (UFW)
- Infrastructure monitoring
- Backup automation
- Incident troubleshooting
- Infrastructure documentation

---

## Repository Structure

```
homelab-infrastructure
├── README.md
├── docs
│   ├── infrastructure-diagram.md
│   ├── troubleshooting.md
│   └── incident-response
│       ├── nginx-down.md
│       ├── high-cpu.md
│       ├── disk-full.md
│       └── login-failure.md
├── ubuntu-server-setup
│   └── setup.sh
├── vm-networking
│   └── bridge-network.sh
├── nginx-reverse-proxy
│   ├── install-nginx.sh
│   └── example.conf
├── monitoring
│   └── install-netdata.sh
└── backup-system
    └── backup.sh
```

Each directory contains scripts and documentation explaining the purpose and configuration of the infrastructure component.

---

## Purpose

This repository serves as a practical demonstration of infrastructure and system administration concepts using a self-hosted Linux environment.

It is intended as a learning project and technical portfolio for infrastructure, system administration, and technical support roles.
