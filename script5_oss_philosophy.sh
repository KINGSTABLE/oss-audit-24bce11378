#!/bin/bash
# ============================================================
# Script 5: OSS Philosophy Creator
# ------------------------------------------------------------
# Author              : VRAJ J. PATEL
# Registration Number : 24BCE11378
# Slot                : D11
# Date of Submission  : 31/03/2026
# Course              : Open Source Software
# ============================================================

echo "========================================="
echo "        OSS PHILOSOPHY CREATOR"
echo "  By: VRAJ J. PATEL | Reg: 24BCE11378"
echo "========================================="
echo ""
echo "Answer the following questions to generate"
echo "your personalised open-source manifesto."
echo ""

read -p "Which open-source tool or software do you use most often?  " TOOL
read -p "What does software freedom mean to you personally?         " FREEDOM
read -p "What would you build and share with the world?             " BUILD

# Dynamic output filename using the current username
DATE=$(date "+%d %B %Y, %H:%M")
FILE="oss_manifesto_$(whoami).txt"

# Write manifesto to file
{
    echo "========================================="
    echo "       MY OPEN SOURCE MANIFESTO"
    echo "========================================="
    echo "Author     : VRAJ J. PATEL"
    echo "Reg. No.   : 24BCE11378"
    echo "Slot       : D11"
    echo "Generated  : $DATE"
    echo "-----------------------------------------"
    echo ""
    echo "I use '$TOOL' regularly, and it demonstrates"
    echo "the power and beauty of open-source software."
    echo ""
    echo "To me, software freedom means $FREEDOM."
    echo ""
    echo "In the future, I would like to build $BUILD"
    echo "and share it freely with the world — because"
    echo "knowledge grows when it is shared."
    echo ""
    echo "-----------------------------------------"
    echo "\"Given enough eyeballs, all bugs are shallow.\""
    echo "                          — Linus's Law"
    echo "========================================="
} > "$FILE"

echo ""
echo "Manifesto saved to: $FILE"
echo "-----------------------------------------"
cat "$FILE"
echo "========================================="

# -------------------------------------------------------
# Concepts Demonstrated:
#   - read for interactive multi-prompt user input
#   - Dynamic filename using $(whoami)
#   - date command for formatted timestamp
#   - Grouped output redirection with { } block
#   - cat to display the generated file
#   - Quoting variables to handle spaces safely
# -------------------------------------------------------
