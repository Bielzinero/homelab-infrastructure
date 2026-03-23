# Incident: High CPU Usage

## Scenario

The server becomes slow and monitoring tools report high CPU usage.

## Identify CPU Usage

Check system usage:

```bash
top
```
or
```bash
htop
```
Look for processes consuming excessive CPU.

## Investigate the Process

Identify the process ID (PID) and check details:

```bash
ps -p <PID> -o pid,ppid,cmd,%mem,%cpu
```

## Possible Causes
Runaway processes

Poorly optimized application

Excessive traffic

Background jobs consuming resources

## Additional Checks

Check system load:

```bash
uptime
```

Check recent system logs:

```bash
sudo journalctl -xe
```

## Resolution

Depending on the cause:

Restart the service:

```bash
sudo systemctl restart <service>
```

Or terminate the process:

```bash
sudo kill -9 <PID>
```

Monitor CPU usage afterward to ensure stability.
---
