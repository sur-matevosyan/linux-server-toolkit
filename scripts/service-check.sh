#!/bin/bash

set -u

SERVICES=("$@")

if [ "${#SERVICES[@]}" -eq 0 ]; then
    SERVICES=("ssh" "nginx" "docker")
fi

echo "================================"
echo "     SERVICE STATUS REPORT"
echo "================================"

for service in "${SERVICES[@]}"; do
    if systemctl is-active --quiet "$service"; then
        echo "[RUNNING] $service"
    else
        echo "[NOT RUNNING] $service"
    fi
done
