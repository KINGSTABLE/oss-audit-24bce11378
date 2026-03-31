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
echo "            LINUX SYSTEM PROFILE"
echo "=========================================="

# Current date and time
CURRENT_DATE=$(date "+%Y-%m-%d %H:%M:%S")

# Kernel version
KERNEL_VERSION=$(uname -r)

# Kernel architecture
ARCH=$(uname -m)

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
CPU_INFO=$(lscpu | grep "Model name" | cut -d ':' -f2 | sed 's/^[[:space:]]*//')

# Number of CPU cores
CPU_CORES=$(nproc)

# RAM Information
TOTAL_RAM=$(free -h | grep Mem | awk '{print $2}')
USED_RAM=$(free -h | grep Mem | awk '{print $3}')

# Display Information
echo "Date & Time       : $CURRENT_DATE"
echo "Operating System  : $OS_NAME"
echo "Kernel Version    : $KERNEL_VERSION ($ARCH)"
echo "Hostname          : $HOST_NAME"
echo "Logged In User    : $CURRENT_USER"
echo "System Uptime     : $SYSTEM_UPTIME"
echo "CPU Information   : $CPU_INFO"
echo "CPU Cores         : $CPU_CORES"
echo "Total RAM         : $TOTAL_RAM  (Used: $USED_RAM)"

echo "------------------------------------------"
echo "This Linux system is based on open-source"
echo "software and is licensed under the GPL."
echo "------------------------------------------"
echo "Student : VRAJ J. PATEL  |  Reg: 24BCE11378  |  Slot: D11"
echo "=========================================="

# Concepts Used:
# - Variables
# - Command substitution $( )
# - if condition
# - echo formatting
# - Basic Linux commands (uname, uptime, whoami, free, lscpu, nproc)
