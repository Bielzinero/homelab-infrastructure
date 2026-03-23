# Incident: Disk Space Full

## Scenario

Applications stop functioning correctly and errors appear indicating insufficient disk space.

## Check Disk Usage

View disk usage:

```bash
df -h
```

Identify partitions that are full.

## Locate Large Files

Find directories using the most space:

```bash
sudo du -sh /* 2>/dev/null
```

Or drill down further:

```bash
sudo du -sh /var/*
```

## Common Causes

Log files growing excessively

Large backups

Temporary files

Unused packages

## Log Cleanup

Check log directory:

```bash
cd /var/log
```
Remove old logs if necessary.

## Package Cleanup

Remove unused packages:

```bash
sudo apt autoremove
```

Clean package cache:

```bash
sudo apt clean
```

## Resolution

After cleanup, confirm available space:

```bash
df -h
```

Ensure the system has sufficient free disk space for normal operation.
---
