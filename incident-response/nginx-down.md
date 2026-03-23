# Incident: Nginx Service Down

## Scenario

Users report that the website is not loading. Attempting to access the server returns a connection error.

## Initial Checks

Check if the Nginx service is running:

```bash
sudo systemctl status nginx
```

If the service is stopped, attempt to start it:

```bash
sudo systemctl start nginx
```

Verify that the Nginx configuration is valid:

```bash
sudo nginx -t
```

If configuration errors exist, review the configuration files in:
/etc/nginx/sites-enabled/

Inspect logs for error messages:

```bash
sudo journalctl -u nginx
```
or
```bash
sudo tail -f /var/log/nginx/error.log
```

## Common Causes
Syntax error in configuration

Port already in use

Missing upstream service

File permission issues

##
After fixing the issue, reload the service:

```bash
sudo systemctl restart nginx
```

Verify that the site is accessible.
---
