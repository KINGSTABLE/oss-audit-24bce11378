#!/bin/bash
# ============================================================
# Script 3 : Storage & Permission Audit
# Author   : VRAJ J. PATEL
# Reg. No. : 24BCE11378
# Slot     : D11
# Submitted: 31/03/2026
# Course   : Open Source Software
# ============================================================

echo "========================================="
echo "       STORAGE & PERMISSION AUDIT"
echo "       By: VRAJ J. PATEL | 24BCE11378"
echo "========================================="

DIRS="/etc /var/log /home /usr/bin /tmp"
AUDIT_TIME=$(date "+%Y-%m-%d %H:%M:%S")

echo "Audit started at : $AUDIT_TIME"
echo ""
printf "%-15s %-12s %-20s %s\n" "Size" "Permissions" "Owner" "Directory"
echo "---------------------------------------------------------------"

for dir in $DIRS; do
    if [ -d "$dir" ]; then
        SIZE=$(du -sh "$dir" 2>/dev/null | cut -f1)
        PERMS=$(ls -ld "$dir" | awk '{print $1}')
        OWNER=$(ls -ld "$dir" | awk '{print $3}')
        printf "%-15s %-12s %-20s %s\n" "$SIZE" "$PERMS" "$OWNER" "$dir"
    else
        printf "%-15s %-12s %-20s %s\n" "N/A" "N/A" "N/A" "$dir (not found)"
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
