# Homelab Infrastructure Diagram

```
                Internet
                    │
              Port 80 / 443
                    │
                Router
                    │
            ┌─────────────────┐
            │  Ubuntu Server  │
            │   (Host OS)     │
            └─────────────────┘
                    │
             Linux Bridge (br0)
                    │
        ┌──────────────┬──────────────┬──────────────┐
        │              │              │
   VM: Web App     VM: Database     VM: Test Node
   Port 3000       Port 5432        Dev / Testing
        │
        ▼
      Nginx
 Reverse Proxy
 (Port 80/443)

Routes external HTTP traffic to internal services
```

## Description

Incoming traffic from the internet reaches the router and is forwarded to the Ubuntu host.

Nginx runs on the host system and acts as a reverse proxy listening on ports **80 and 443**.  
Requests are forwarded to internal services running inside virtual machines.

A Linux bridge interface (`br0`) allows the virtual machines to communicate on the same network as the host.
