#!/bin/bash
# ============================================================
# Script 4 : System Log Scanner
# Author   : VRAJ J. PATEL
# Reg. No. : 24BCE11378
# Slot     : D11
# Submitted: 31/03/2026
# Course   : Open Source Software
# ============================================================

echo "========================================="
echo "          SYSTEM LOG SCANNER"
echo "     By: VRAJ J. PATEL | 24BCE11378"
echo "========================================="

LOG_FILE=$1
KEYWORD=${2:-error}

if [ -z "$LOG_FILE" ]; then
    echo "Usage  : $0 <log_file> [keyword]"
    echo "Example: $0 /var/log/syslog error"
    exit 1
fi

if [ ! -f "$LOG_FILE" ]; then
    echo "Error: Log file '$LOG_FILE' not found."
    exit 1
fi

echo "Scanning : $LOG_FILE"
echo "Keyword  : $KEYWORD"
echo "-----------------------------------------"

COUNT=0
MATCH_LINES=""

while IFS= read -r line; do
    if echo "$line" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
        MATCH_LINES="$MATCH_LINES$line\n"
    fi
done < "$LOG_FILE"

echo "Total matches for '$KEYWORD' : $COUNT"
echo "-----------------------------------------"
echo "Last 5 matching lines:"
echo -e "$MATCH_LINES" | tail -n 5

echo "========================================="
