# OSS Audit — Linux Shell Scripts

## Student Details

| Field               | Details            |
|---------------------|--------------------|
| **Student Name**    | VRAJ J. PATEL      |
| **Reg. Number**     | 24BCE11378         |
| **Slot**            | D11                |
| **Date of Submission** | 31/03/2026      |
| **Course**          | Open Source Software |

---

## Overview

This repository contains five Bash shell scripts that demonstrate fundamental Linux and Open Source Software (OSS) concepts. Each script covers a different aspect of system interaction, open-source package inspection, storage management, log analysis, and OSS philosophy.

---

## Scripts

### 1. `script_1_system_profile.sh` — Linux System Profile
Displays a complete profile of the running Linux system including:
- Current date & time
- Operating system name
- Kernel version
- Hostname
- Logged-in user
- System uptime
- CPU model
- Total RAM

**Run:**
```bash
bash script_1_system_profile.sh
```

---

### 2. `script2_foss_checker.sh` — FOSS Package Checker
Accepts a package name as input and:
- Checks whether the package is installed
- Shows the installed version
- Prints a short description of well-known OSS tools (LibreOffice, Firefox, VLC, Apache)

**Run:**
```bash
bash script2_foss_checker.sh
```

---

### 3. `script3_storage_audit.sh` — Storage & Permission Audit
Audits key system directories by reporting:
- Disk usage (human-readable)
- File permissions
- Directory owner
- Overall disk usage via `df`
- LibreOffice configuration directory check

**Run:**
```bash
bash script3_storage_audit.sh
```

---

### 4. `script4_log_scanner.sh` — System Log Scanner
Scans any text-based log file for a keyword (default: `error`) and reports:
- Number of matching lines
- Last 5 matching lines

**Run:**
```bash
bash script4_log_scanner.sh /var/log/syslog error
```

---

### 5. `script5_oss_philosophy.sh` — OSS Philosophy Creator
An interactive script that asks three questions and generates a personalised OSS manifesto saved to a `.txt` file.

**Run:**
```bash
bash script5_oss_philosophy.sh
```

---

## Concepts Demonstrated

- Variables and command substitution (`$( )`)
- Conditional statements (`if / case`)
- Loops (`for`, `while`)
- User input with `read`
- File I/O and redirection
- Linux built-in commands (`uname`, `uptime`, `df`, `du`, `lscpu`, `free`, `grep`)
- Open Source Software philosophy

---

## License

These scripts are shared for educational purposes under the spirit of open-source collaboration.
