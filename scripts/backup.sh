#!/bin/bash

set -Eeuo pipefail

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 SOURCE_DIR BACKUP_DIR"
    exit 1
fi

SOURCE_DIR="$1"
BACKUP_DIR="$2"
TIMESTAMP="$(date +%Y%m%d_%H%M%S)"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: source directory does not exist: $SOURCE_DIR"
    exit 1
fi

mkdir -p "$BACKUP_DIR"

SOURCE_NAME="$(basename "$SOURCE_DIR")"
ARCHIVE="$BACKUP_DIR/${SOURCE_NAME}_${TIMESTAMP}.tar.gz"

tar -czf "$ARCHIVE" -C "$(dirname "$SOURCE_DIR")" "$SOURCE_NAME"

echo "Backup created: $ARCHIVE"
