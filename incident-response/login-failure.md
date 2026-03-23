# Incident: Login Failure

## Scenario

A user reports that they cannot log in to the server or application.  
They receive an authentication error when attempting to access the system.

---

## Initial Checks

Verify that the system is reachable and running:

```bash
ping <server-ip>
```

Check whether the SSH service is active:

```bash
Check whether the SSH service is active:
```

## Check Authentication Logs

Inspect authentication logs to identify the reason for the login failure:

```bash
sudo tail -f /var/log/auth.log
```

Look for messages such as:

Failed password attempts

Permission denied

Account locked

Invalid user


## Verify User Account

Check that the user account exists:

```bash
id <username>
```

Confirm the account is not locked:

```bash
sudo passwd -S <username>
```

Unlock account if necessary:

```bash
sudo passwd -u <username>
```

## Check SSH Configuration

Inspect SSH configuration file:

```bash
sudo nano /etc/ssh/sshd_config
```

Verify settings such as:

PermitRootLogin

PasswordAuthentication

AllowUsers

After changes, reload SSH:

```bash
sudo systemctl restart ssh
```

## Verify Permissions

Ensure correct permissions for SSH key authentication:

```bash
ls -ld ~/.ssh
ls -l ~/.ssh/authorized_keys
```

Correct permissions should be:

~/.ssh                700

~/.ssh/authorized_keys 600

## Resolution

Once the root cause is identified:

Correct SSH configuration

Unlock user account

Update authentication method

Fix key permissions

Confirm successful login:

```bash
ssh <username>@<server-ip>
```

Verify that authentication works correctly and monitor logs for further errors.

---
