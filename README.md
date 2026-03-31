# OSS Audit – Shell Scripting Assignment

## Student Details

| Field               | Details           |
|---------------------|-------------------|
| **Student Name**    | VRAJ J. PATEL     |
| **Registration No.**| 24BCE11378        |
| **Slot**            | D11               |
| **Date of Submission** | 31/03/2026     |
| **Course**          | Open Source Software |

---

## About This Repository

This repository contains five Bash shell scripts developed as part of the **Open Source Software** course assignment. Each script demonstrates a different aspect of Linux system administration and OSS concepts.

---

## Scripts Overview

### 1. `script_1_system_profile.sh` – Linux System Profile
Displays a comprehensive profile of the current Linux system including OS name, kernel version, hostname, logged-in user, system uptime, CPU info, and total RAM.

**Key Concepts:**
- Variables and command substitution `$( )`
- Conditional (`if`) statements
- Basic Linux commands: `uname`, `uptime`, `whoami`, `free`, `lscpu`, `hostname`

---

### 2. `script2_foss_checker.sh` – Open Source Package Checker
Accepts user input to check whether a given software package is installed on the system. Prints the version if found, and shows a short description for well-known OSS packages.

**Key Concepts:**
- `read` for user input
- `which` for package detection
- `case` statement for pattern matching
- Process substitution and output redirection

---

### 3. `script3_storage_audit.sh` – Storage & Permission Audit
Iterates over key system directories and reports their size, permissions, and owner. Also checks overall disk usage and whether a LibreOffice configuration directory exists.

**Key Concepts:**
- `for` loop over directory list
- `du`, `df`, `ls -ld` for storage introspection
- `printf` for formatted table output
- Conditional directory existence check

---

### 4. `script4_log_scanner.sh` – System Log Scanner
Takes a log file path and an optional keyword as arguments. Scans the file line-by-line and reports how many times the keyword appears, printing the most recent matching lines.

**Key Concepts:**
- Positional parameters (`$1`, `$2`)
- `while IFS= read -r` loop for safe line reading
- `grep -i` for case-insensitive search
- Counter variable and string accumulation

---

### 5. `script5_oss_philosophy.sh` – OSS Philosophy Creator
Prompts the user with three questions about their relationship with open-source software and writes their responses into a personalised manifesto text file.

**Key Concepts:**
- Interactive `read` prompts
- File creation and append redirection (`>`, `>>`)
- `date` command and dynamic filename generation
- `cat` to display the generated file

---

## How to Run

```bash
# Make all scripts executable
chmod +x *.sh

# Run individual scripts
./script_1_system_profile.sh
./script2_foss_checker.sh
./script3_storage_audit.sh
./script4_log_scanner.sh /var/log/syslog error
./script5_oss_philosophy.sh
```

---

## License

These scripts are written for academic purposes under the Open Source Software course. They are free to study and adapt in the spirit of open-source collaboration.

---

*Submitted by **VRAJ J. PATEL** (24BCE11378) | Slot D11 | 31/03/2026*
