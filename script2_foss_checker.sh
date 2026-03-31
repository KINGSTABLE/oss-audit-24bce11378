#!/bin/bash
# ============================================================
# Script 2 : FOSS Package Checker
# Author   : VRAJ J. PATEL
# Reg. No. : 24BCE11378
# Slot     : D11
# Submitted: 31/03/2026
# Course   : Open Source Software
# ============================================================

echo "========================================="
echo "     OPEN SOURCE PACKAGE CHECKER"
echo "     By: VRAJ J. PATEL  |  24BCE11378"
echo "========================================="

read -p "Enter package name to check (e.g., libreoffice, firefox, vlc): " PACKAGE

if which "$PACKAGE" > /dev/null 2>&1; then
    echo "[FOUND] '$PACKAGE' is installed on this system."
    VERSION=$("$PACKAGE" --version 2>/dev/null | head -n 1)
    echo "Version : ${VERSION:-N/A}"
else
    echo "[NOT FOUND] '$PACKAGE' is NOT installed on this system."
fi

echo "-----------------------------------------"
echo "About common open-source tools:"

case $PACKAGE in
    libreoffice)
        echo "LibreOffice : A free and open-source office suite (Writer, Calc, Impress)."
        ;;
    firefox)
        echo "Firefox     : Open-source web browser maintained by Mozilla Foundation."
        ;;
    vlc)
        echo "VLC         : Cross-platform open-source multimedia player."
        ;;
    apache2)
        echo "Apache2     : One of the world's most popular open-source web servers."
        ;;
    git)
        echo "Git         : Distributed version control system — powers open-source collaboration."
        ;;
    *)
        echo "Open-source software promotes freedom, transparency, and community collaboration."
        ;;
esac

echo "========================================="
