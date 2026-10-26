#!/bin/bash

set -u

echo "================================"
echo "     LINUX SERVER REPORT"
echo "================================"

echo
echo "--- Operating System ---"
if [ -f /etc/os-release ]; then
    . /etc/os-release
    echo "$PRETTY_NAME"
fi

echo
echo "--- Kernel ---"
uname -r

echo
echo "--- Hostname ---"
hostname

echo
echo "--- Uptime ---"
uptime -p

echo
echo "--- CPU ---"
nproc
lscpu | grep -E '^Model name:' | head -n 1

echo
echo "--- Memory ---"
free -h

echo
echo "--- Disk Usage ---"
df -h /

echo
echo "Report completed."
