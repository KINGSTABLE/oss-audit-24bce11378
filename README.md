# OSS Audit – Linux Shell Scripts

## Student Details

| Field                  | Details              |
|------------------------|----------------------|
| **Student Name**       | VRAJ J. PATEL        |
| **Registration Number**| 24BCE11378           |
| **Slot**               | D11                  |
| **Date of Submission** | 31/03/2026           |
| **Course**             | Open Source Software |

---

## About This Repository

This repository contains five Bash shell scripts developed as part of the Open Source Software course lab audit. Each script demonstrates core Linux concepts such as command substitution, loops, conditionals, file I/O, and system utilities — all built on free and open-source tools.

---

## Scripts Overview

### 1. `script_1_system_profile.sh` – Linux System Profile
Collects and displays key system information including:
- Operating system name and kernel version
- Hostname and currently logged-in user
- System uptime, CPU model, and total RAM

**Concepts used:** Variables, command substitution `$( )`, `if` condition, `echo` formatting, basic Linux commands (`uname`, `uptime`, `whoami`, `free`, `lscpu`).

<img width="1042" height="542" alt="image" src="https://github.com/user-attachments/assets/f000001e-e32c-43cd-86fe-4584e36e9ff6" />


---

### 2. `script2_foss_checker.sh` – Open Source Package Checker
Prompts the user to enter a package name and checks whether it is installed on the system. If found, it displays the installed version. It also prints a brief description of well-known open-source tools.

**Concepts used:** `read`, `which`, `case` statement, command substitution.

<img width="1050" height="326" alt="image" src="https://github.com/user-attachments/assets/a3530215-55cd-46f5-82d4-a75de23a0225" />


---

### 3. `script3_storage_audit.sh` – Storage & Permission Audit
Audits a predefined list of critical directories (`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`) and reports each directory's size, permissions, and owner. Also shows overall disk usage and checks for a LibreOffice configuration directory.

**Concepts used:** `for` loop, `du`, `df`, `ls -ld`, `printf` formatting.

<img width="983" height="465" alt="image" src="https://github.com/user-attachments/assets/2c680a07-94d3-4065-8918-f8a868615124" />


---

### 4. `script4_log_scanner.sh` – System Log Scanner
Accepts a log file path and an optional keyword (default: `error`) as command-line arguments. It scans the file line-by-line, counts occurrences of the keyword, and prints the five most recent matching lines.

**Concepts used:** Command-line arguments, `while` loop, `grep -i`, counters, `tail`.

<img width="1000" height="177" alt="image" src="https://github.com/user-attachments/assets/74274605-510f-4343-af8e-441d8b410f75" />


---

### 5. `script5_oss_philosophy.sh` – OSS Philosophy Creator
An interactive script that asks the user three questions about their open-source usage and beliefs, then saves the responses as a personalised manifesto text file.

**Concepts used:** `read`, string interpolation, file redirection (`>`, `>>`), `date`, `whoami`.

<img width="1016" height="649" alt="image" src="https://github.com/user-attachments/assets/44d712f7-2c5d-4bcc-9aa4-08518ccaaa3b" />


---

## How to Run

```bash
# Make a script executable (example for script 1)
chmod +x script_1_system_profile.sh

# Run it
./script_1_system_profile.sh
```

For `script4_log_scanner.sh`, pass the log file and an optional keyword:

```bash
chmod +x script4_log_scanner.sh
./script4_log_scanner.sh /var/log/syslog error
```

---

## License

All scripts are written using free and open-source tools and are shared under the principles of the GNU General Public License (GPL). Open-source software promotes collaboration, transparency, and the freedom to learn, use, modify, and share.

---

*VRAJ J. PATEL | 24BCE11378 | Slot D11 | 31/03/2026*
