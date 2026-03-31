#!/bin/bash
# ============================================================
# Script 4: System Log Scanner
# ------------------------------------------------------------
# Author              : VRAJ J. PATEL
# Registration Number : 24BCE11378
# Slot                : D11
# Date of Submission  : 31/03/2026
# Course              : Open Source Software
# ============================================================

echo "========================================="
echo "           SYSTEM LOG SCANNER"
echo "  By: VRAJ J. PATEL | Reg: 24BCE11378"
echo "========================================="

LOG_FILE=$1
KEYWORD=${2:-error}

# Validate arguments
if [ -z "$LOG_FILE" ]; then
    echo "Usage : $0 <log_file> [keyword]"
    echo "Example: $0 /var/log/syslog error"
    exit 1
fi

if [ ! -f "$LOG_FILE" ]; then
    echo "Error : Log file '$LOG_FILE' not found."
    exit 1
fi

echo "Log file : $LOG_FILE"
echo "Keyword  : '$KEYWORD'"
echo "-----------------------------------------"

COUNT=0
MATCH_LINES=""

# Read the file line by line safely
while IFS= read -r line; do
    if echo "$line" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
        MATCH_LINES="${MATCH_LINES}${line}\n"
    fi
done < "$LOG_FILE"

# Summary
if [ "$COUNT" -eq 0 ]; then
    echo "No lines matching '$KEYWORD' were found in the log."
else
    echo "Keyword '$KEYWORD' matched $COUNT line(s)."
    echo ""
    echo "Most recent matching lines (up to 5):"
    echo "-----------------------------------------"
    echo -e "$MATCH_LINES" | tail -n 5
fi

echo "========================================="

# -------------------------------------------------------
# Concepts Demonstrated:
#   - Positional parameters ($1, $2) with default value
#   - Input validation (empty string and file existence)
#   - while IFS= read -r for safe, portable line reading
#   - grep -iq for case-insensitive search
#   - Arithmetic counter with $(( ))
#   - String accumulation across loop iterations
#   - tail -n to show only the most recent results
# -------------------------------------------------------
