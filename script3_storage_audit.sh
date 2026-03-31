#!/bin/bash
# Storage and Permission Audit
# Author: VRAJ J. PATEL

echo "========================================="
echo "        STORAGE & PERMISSION AUDIT"
echo "========================================="

DIRS="/etc /var/log /home /usr/bin /tmp"

printf "%-15s %-12s %-20s %s\n" "Size" "Permissions" "Owner" "Directory"
echo "---------------------------------------------------------------"

for dir in $DIRS; do
    if [ -d "$dir" ]; then
        SIZE=$(du -sh "$dir" 2>/dev/null | cut -f1)
        PERMS=$(ls -ld "$dir" | awk '{print $1}')
        OWNER=$(ls -ld "$dir" | awk '{print $3}')
        printf "%-15s %-12s %-20s %s\n" "$SIZE" "$PERMS" "$OWNER" "$dir"
    fi
done

echo "-----------------------------------------"
echo "Disk Usage Overview:"
df -h | grep '^/dev/'

echo "-----------------------------------------"
echo "LibreOffice Configuration Check:"

if [ -d "$HOME/.config/libreoffice" ]; then
    echo "LibreOffice config directory found."
    ls -ld "$HOME/.config/libreoffice"
else
    echo "LibreOffice config directory not found."
fi

echo "========================================="
