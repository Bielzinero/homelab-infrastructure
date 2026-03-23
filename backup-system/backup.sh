
## Script
`backup-system/backup.sh`

```bash
#!/bin/bash

BACKUP_DIR="/backup"
SOURCE_DIR="/var/www"
DATE=$(date +%F)

mkdir -p $BACKUP_DIR

echo "Starting backup..."

tar -czf $BACKUP_DIR/backup-$DATE.tar.gz $SOURCE_DIR

echo "Backup complete:"
echo "$BACKUP_DIR/backup-$DATE.tar.gz"
