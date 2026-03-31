#!/bin/bash
# ============================================================
# Script 5 : OSS Philosophy Creator
# Author   : VRAJ J. PATEL
# Reg. No. : 24BCE11378
# Slot     : D11
# Submitted: 31/03/2026
# Course   : Open Source Software
# ============================================================

echo "========================================="
echo "        OSS PHILOSOPHY CREATOR"
echo "     By: VRAJ J. PATEL | 24BCE11378"
echo "========================================="

read -p "Which open-source software do you use daily?       " TOOL
read -p "What does software freedom mean to you?            " FREEDOM
read -p "What open-source project would you build someday?  " BUILD

DATE=$(date "+%d/%m/%Y %H:%M:%S")
FILE="oss_manifesto_$(whoami).txt"

{
    echo "========================================="
    echo "       OPEN SOURCE MANIFESTO"
    echo "       By: VRAJ J. PATEL | 24BCE11378"
    echo "       Slot D11  |  Submitted: 31/03/2026"
    echo "========================================="
    echo "Generated on : $DATE"
    echo ""
    echo "Daily OSS Tool   : $TOOL"
    echo "Software Freedom : $FREEDOM"
    echo "Future Project   : $BUILD"
    echo ""
    echo "I use $TOOL regularly, which shows the power of open-source."
    echo "To me, software freedom means: $FREEDOM."
    echo "One day I would like to build '$BUILD' and share it with the world."
    echo "========================================="
} > "$FILE"

echo ""
echo "Manifesto saved to: $FILE"
echo "-----------------------------------------"
cat "$FILE"

echo "========================================="
