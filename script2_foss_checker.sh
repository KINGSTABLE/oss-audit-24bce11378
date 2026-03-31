#!/bin/bash
# ============================================================
# Script 2: Open Source Package Checker
# ------------------------------------------------------------
# Author              : VRAJ J. PATEL
# Registration Number : 24BCE11378
# Slot                : D11
# Date of Submission  : 31/03/2026
# Course              : Open Source Software
# ============================================================

echo "========================================="
echo "     OPEN SOURCE PACKAGE CHECKER"
echo "  By: VRAJ J. PATEL | Reg: 24BCE11378"
echo "========================================="

read -p "Enter package name to check (e.g., libreoffice): " PACKAGE

# Validate that the user actually typed something
if [ -z "$PACKAGE" ]; then
    echo "No package name entered. Exiting."
    exit 1
fi

echo "-----------------------------------------"
if which "$PACKAGE" > /dev/null 2>&1; then
    echo "[FOUND]  '$PACKAGE' is installed on this system."
    VERSION=$("$PACKAGE" --version 2>/dev/null | head -n 1)
    if [ -n "$VERSION" ]; then
        echo "Version : $VERSION"
    else
        echo "Version information is not available for this package."
    fi
else
    echo "[NOT FOUND]  '$PACKAGE' is NOT installed on this system."
fi

echo "-----------------------------------------"
echo "Quick reference for common OSS tools:"
echo ""

case $PACKAGE in
    libreoffice)
        echo "LibreOffice  : Free, open-source office suite (Docs, Calc, Impress)."
        echo "License      : Mozilla Public License v2.0"
        echo "Website      : https://www.libreoffice.org"
        ;;
    firefox)
        echo "Firefox      : Open-source web browser by Mozilla Foundation."
        echo "License      : Mozilla Public License v2.0"
        echo "Website      : https://www.mozilla.org/firefox"
        ;;
    vlc)
        echo "VLC          : Cross-platform open-source media player by VideoLAN."
        echo "License      : GNU GPL v2.0"
        echo "Website      : https://www.videolan.org/vlc"
        ;;
    apache2 | httpd)
        echo "Apache HTTPD : One of the world's most-used open-source web servers."
        echo "License      : Apache License 2.0"
        echo "Website      : https://httpd.apache.org"
        ;;
    git)
        echo "Git          : Distributed version control system by Linus Torvalds."
        echo "License      : GNU GPL v2.0"
        echo "Website      : https://git-scm.com"
        ;;
    *)
        echo "Open-source software promotes freedom, transparency, and collaboration."
        echo "Tip : Try checking 'libreoffice', 'firefox', 'vlc', 'apache2', or 'git'."
        ;;
esac

echo "========================================="

# -------------------------------------------------------
# Concepts Demonstrated:
#   - read for interactive user input
#   - Input validation with -z check
#   - which for checking if a command exists
#   - Command output capture with $( )
#   - case statement for multi-branch matching
#   - Quoted variable expansion for safe handling
# -------------------------------------------------------
