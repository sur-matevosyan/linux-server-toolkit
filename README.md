# Linux Server Administration Toolkit

A collection of Bash scripts for common Linux system administration tasks.

## Features

- System information: OS, kernel, hostname, CPU, memory, disk usage
- Service status checks using systemd
- Directory backups with timestamped compressed archives
- Simple command-line interface

## Requirements

- Linux
- Bash
- systemd
- tar
- Standard Linux utilities

## Usage

### 1. System information

```bash
./scripts/server-info.sh
```

### 2. Check services

```bash
./scripts/service-check.sh ssh nginx docker
```

If no services are provided, the script checks ssh, nginx, and docker.

### 3. Create a backup

```bash
./scripts/backup.sh SOURCE_DIR BACKUP_DIR
```

Example:

```bash
./scripts/backup.sh test-data backups
```

The backup is saved as a timestamped `.tar.gz` archive.

## Project Structure

```text
linux-server-toolkit/
├── scripts/
│   ├── server-info.sh
│   ├── service-check.sh
│   └── backup.sh
├── logs/
├── test-data/
├── .gitignore
└── README.md
```

## Safety

Test backup scripts with non-critical data before using them on production systems.

## License

MIT
