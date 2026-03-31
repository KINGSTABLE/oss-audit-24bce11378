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
echo "        STORAGE & PERMISSION AUDIT"
echo "========================================="

# Directories to audit
DIRS="/etc /var/log /home /usr/bin /tmp"

printf "%-12s %-12s %-20s %s\n" "Size" "Permissions" "Owner" "Directory"
echo "---------------------------------------------------------------"

for dir in $DIRS; do
    if [ -d "$dir" ]; then
        SIZE=$(du -sh "$dir" 2>/dev/null | cut -f1)
        PERMS=$(ls -ld "$dir" | awk '{print $1}')
        OWNER=$(ls -ld "$dir" | awk '{print $3}')
        printf "%-12s %-12s %-20s %s\n" "$SIZE" "$PERMS" "$OWNER" "$dir"
    else
        printf "%-12s %-12s %-20s %s\n" "N/A" "N/A" "N/A" "$dir (not found)"
    fi
done

echo "-----------------------------------------"
echo "Disk Usage Overview:"
df -h | grep '^/dev/'

echo "-----------------------------------------"
echo "Inode Usage Overview:"
df -i | grep '^/dev/' | awk '{printf "%-30s Inodes Used: %s / %s\n", $1, $3, $2}'

echo "-----------------------------------------"
echo "LibreOffice Configuration Check:"

if [ -d "$HOME/.config/libreoffice" ]; then
    echo "LibreOffice config directory found at: $HOME/.config/libreoffice"
    ls -ld "$HOME/.config/libreoffice"
else
    echo "LibreOffice config directory not found for user: $(whoami)"
fi

echo "-----------------------------------------"
echo "Student : VRAJ J. PATEL  |  Reg: 24BCE11378  |  Slot: D11"
echo "========================================="
