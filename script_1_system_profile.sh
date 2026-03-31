#!/bin/bash
# ============================================================
# Script 1 : Linux System Profile
# Author   : VRAJ J. PATEL
# Reg. No. : 24BCE11378
# Slot     : D11
# Submitted: 31/03/2026
# Course   : Open Source Software
# ============================================================

# -------------------------------
# LINUX SYSTEM PROFILE
# -------------------------------

echo "=========================================="
echo "         LINUX SYSTEM PROFILE"
echo "        Submitted by: VRAJ J. PATEL"
echo "        Reg No      : 24BCE11378"
echo "=========================================="

# Current date and time
CURRENT_DATE=$(date "+%Y-%m-%d %H:%M:%S")

# Kernel version
KERNEL_VERSION=$(uname -r)

# Logged in user
CURRENT_USER=$(whoami)

# System uptime
SYSTEM_UPTIME=$(uptime -p)

# Hostname
HOST_NAME=$(hostname)

# Operating System Name
if [ -f /etc/os-release ]; then
    OS_NAME=$(grep "^PRETTY_NAME" /etc/os-release | cut -d '=' -f2 | tr -d '"')
else
    OS_NAME=$(uname -s)
fi

# CPU Information
CPU_INFO=$(lscpu | grep "Model name" | cut -d ':' -f2)

# RAM Information
TOTAL_RAM=$(free -h | grep Mem | awk '{print $2}')

echo "------------------------------------------"
echo "         SYSTEM DETAILS SUMMARY"
echo "------------------------------------------"
echo "Date & Time       : $CURRENT_DATE"
echo "Operating System  : $OS_NAME"
echo "Kernel Version    : $KERNEL_VERSION"
echo "Hostname          : $HOST_NAME"
echo "Logged In User    : $CURRENT_USER"
echo "System Uptime     : $SYSTEM_UPTIME"
echo "CPU Information   : $CPU_INFO"
echo "Total RAM         : $TOTAL_RAM"

echo "------------------------------------------"
echo "This Linux system is based on open-source"
echo "software and is licensed under the GPL."
echo "------------------------------------------"

echo "=========================================="

# Concepts Used:
# - Variables
# - Command substitution $( )
# - if condition
# - echo formatting
# - Basic Linux commands (uname, uptime, whoami, free, lscpu)
