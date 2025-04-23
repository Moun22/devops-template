#!/bin/bash
# Backup and restore script for databases:
# - Accept backup or restore command
# - Use Docker container or pg_dump/mysqldump
# - Save to ./backups/ or restore from it

if [ "$1" == "backup" ]; then
  mkdir -p backups
  docker exec db_container pg_dump -U user db > backups/db_backup.sql
  echo "✅ Backup complete"
elif [ "$1" == "restore" ]; then
  docker exec -i db_container psql -U user db < backups/db_backup.sql
  echo "✅ Restore complete"
else
  echo "Usage: $0 [backup|restore]"
fi
