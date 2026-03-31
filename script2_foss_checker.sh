#!/bin/bash
# Open Source Package Checker
# Author: VRAJ J. PATEL

echo "========================================="
echo "     OPEN SOURCE PACKAGE CHECKER"
echo "========================================="

read -p "Enter package name to check (e.g., libreoffice): " PACKAGE

if which $PACKAGE > /dev/null 2>&1; then
    echo "[+] $PACKAGE is installed on this system."
    VERSION=$($PACKAGE --version 2>/dev/null | head -n 1)
    echo "Version: $VERSION"
else
    echo "[-] $PACKAGE is NOT installed."
fi

echo "-----------------------------------------"
echo "Information about common open-source software:"

case $PACKAGE in
    libreoffice)
        echo "LibreOffice: A free and open-source office productivity suite."
        ;;
    firefox)
        echo "Firefox: Open-source web browser developed by Mozilla."
        ;;
    vlc)
        echo "VLC: Open-source multimedia player that supports all formats."
        ;;
    apache2)
        echo "Apache: One of the most widely used web servers."
        ;;
    *)
        echo "Open-source software promotes collaboration and transparency."
        ;;
esac

echo "========================================="
