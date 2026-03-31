#!/bin/bash
# System Log Scanner
# Author: VRAJ J. PATEL

echo "========================================="
echo "           SYSTEM LOG SCANNER"
echo "========================================="

LOG_FILE=$1
KEYWORD=${2:-error}

if [ -z "$LOG_FILE" ]; then
    echo "Usage: $0 <log_file> [keyword]"
    exit 1
fi

if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File not found."
    exit 1
fi

COUNT=0
MATCH_LINES=""

while IFS= read -r line; do
    if echo "$line" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
        MATCH_LINES="$MATCH_LINES$line\n"
    fi
done < "$LOG_FILE"

echo "Keyword '$KEYWORD' found $COUNT times."
echo "-----------------------------------------"
echo "Recent matching lines:"
echo -e "$MATCH_LINES" | tail -n 5

echo "========================================="
