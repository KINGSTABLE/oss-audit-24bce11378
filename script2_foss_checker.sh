#!/bin/bash
# ============================================================
# Script 2 : Open Source Package Checker
# Author   : VRAJ J. PATEL
# Reg. No. : 24BCE11378
# Slot     : D11
# Submitted: 31/03/2026
# Course   : Open Source Software
# ============================================================

echo "========================================="
echo "     OPEN SOURCE PACKAGE CHECKER"
echo "========================================="

read -p "Enter package name to check (e.g., libreoffice): " PACKAGE

if [ -z "$PACKAGE" ]; then
    echo "No package name entered. Exiting."
    exit 1
fi

if which "$PACKAGE" > /dev/null 2>&1; then
    echo "[+] $PACKAGE is installed on this system."
    VERSION=$("$PACKAGE" --version 2>/dev/null | head -n 1)
    if [ -n "$VERSION" ]; then
        echo "    Version: $VERSION"
    else
        echo "    Version info not available."
    fi
else
    echo "[-] $PACKAGE is NOT installed."
fi

echo "-----------------------------------------"
echo "Information about common open-source software:"

case $PACKAGE in
    libreoffice)
        echo "LibreOffice: A free and open-source office productivity suite."
        echo "License: Mozilla Public License v2.0"
        ;;
    firefox)
        echo "Firefox: Open-source web browser developed by Mozilla."
        echo "License: Mozilla Public License v2.0"
        ;;
    vlc)
        echo "VLC: Open-source multimedia player that supports all formats."
        echo "License: GNU General Public License v2.0"
        ;;
    apache2)
        echo "Apache: One of the most widely used open-source web servers."
        echo "License: Apache License 2.0"
        ;;
    git)
        echo "Git: Distributed version-control system for tracking code changes."
        echo "License: GNU General Public License v2.0"
        ;;
    python3)
        echo "Python: High-level, interpreted, open-source programming language."
        echo "License: Python Software Foundation License"
        ;;
    *)
        echo "Open-source software promotes collaboration and transparency."
        echo "Visit https://opensource.org for more information."
        ;;
esac

echo "-----------------------------------------"
echo "Student : VRAJ J. PATEL  |  Reg: 24BCE11378  |  Slot: D11"
echo "========================================="
