#!/usr/bin/env bash

TEMP="$(cat /sys/devices/platform/coretemp.0/hwmon/hwmon7/device/hwmon/hwmon7/temp2_input | awk '{sub(/000$/, "", $0); print}')"
echo "${TEMP:-null}"
