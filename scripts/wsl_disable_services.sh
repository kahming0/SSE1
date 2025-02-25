#!/bin/bash

BACKUP_FILE="wsl_service_backup.txt"

echo "Backing up currently running services..."
if [ -f "$BACKUP_FILE" ]; then
	echo "Backup already exists. Skipping backup."
else
	SERVICES=("cron" "ssh" "networking" "systemd-resolved" "dhclient" "wpa_supplicant" "NetworkManager")

	> "$BACKUP_FILE"
	for service in "${SERVICES[@]}"; do
		if systemctl is-active --quiet "$service"; then
			echo "$service" >> "$BACKUP_FILE"
			echo "Stopping $service..."
			sudo systemctl stop "$service"
			sudo systemctl disable "$service"
		fi
	done
	echo "Backup saved to $BACKUP_FILE"
fi

echo "Unnecessary services stopped."