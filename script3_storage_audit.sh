#!/bin/bash
# ============================================================
# Script 3: Storage & Permission Audit
# ------------------------------------------------------------
# Author              : VRAJ J. PATEL
# Registration Number : 24BCE11378
# Slot                : D11
# Date of Submission  : 31/03/2026
# Course              : Open Source Software
# ============================================================

echo "========================================="
echo "        STORAGE & PERMISSION AUDIT"
echo "  By: VRAJ J. PATEL | Reg: 24BCE11378"
echo "========================================="

# Directories to inspect
DIRS="/etc /var/log /home /usr/bin /tmp"

echo ""
echo "Directory-level breakdown:"
echo ""
printf "%-10s  %-12s  %-15s  %s\n" "Size" "Permissions" "Owner" "Directory"
echo "---------------------------------------------------------------"

for dir in $DIRS; do
    if [ -d "$dir" ]; then
        SIZE=$(du -sh "$dir" 2>/dev/null | cut -f1)
        PERMS=$(ls -ld "$dir" | awk '{print $1}')
        OWNER=$(ls -ld "$dir" | awk '{print $3}')
        printf "%-10s  %-12s  %-15s  %s\n" "$SIZE" "$PERMS" "$OWNER" "$dir"
    else
        printf "%-10s  %-12s  %-15s  %s\n" "N/A" "N/A" "N/A" "$dir (not found)"
    fi
done

echo ""
echo "-----------------------------------------"
echo "Overall Disk Usage (mounted filesystems):"
echo "-----------------------------------------"
df -h | grep '^/dev/'

echo ""
echo "-----------------------------------------"
echo "LibreOffice Configuration Check:"
echo "-----------------------------------------"

LO_CONFIG="$HOME/.config/libreoffice"

if [ -d "$LO_CONFIG" ]; then
    echo "LibreOffice config directory found at: $LO_CONFIG"
    ls -ld "$LO_CONFIG"
    echo "Number of items inside: $(ls "$LO_CONFIG" | wc -l)"
else
    echo "LibreOffice config directory not found at: $LO_CONFIG"
    echo "LibreOffice may not be installed or has never been launched."
fi

echo ""
echo "========================================="

# -------------------------------------------------------
# Concepts Demonstrated:
#   - for loop over a space-separated list of directories
#   - -d flag for directory existence check
#   - du and df for disk space reporting
#   - ls -ld for permission and ownership details
#   - printf for aligned tabular output
#   - Handling missing directories gracefully
# -------------------------------------------------------
