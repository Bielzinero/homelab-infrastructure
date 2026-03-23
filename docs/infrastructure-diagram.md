# Homelab Infrastructure Diagram

```
                Internet
                    │
                Router
                    │
            ┌──────────────┐
            │ Ubuntu Server │
            │ (Host System) │
            └──────────────┘
                    │
             Linux Bridge (br0)
                    │
        ┌──────────────┬──────────────┐
        │              │              │
   VM: Web App     VM: Database     VM: Test Node
        │
    Nginx Reverse Proxy
        │
   Routes traffic to internal services
```

## Description

The Ubuntu host acts as the primary server.  
Virtual machines connect to the network using a Linux bridge interface.  
Nginx functions as a reverse proxy to route incoming HTTP traffic to internal services.
