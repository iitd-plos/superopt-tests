#!/bin/bash

# This script is used to temporarily change the core_pattern and cpu scaling_governor settings
# These changes are required for afl-fuzz to work
if [[ $1 == "apply" ]]; then
    echo core | sudo tee /proc/sys/kernel/core_pattern
    cd /sys/devices/system/cpu
    echo performance | sudo tee cpu*/cpufreq/scaling_governor
elif [[ $1 == "revert" ]]; then
    echo "|/usr/share/apport/apport -p%p -s%s -c%c -d%d -P%P -u%u -g%g -- %E" | sudo tee /proc/sys/kernel/core_pattern
    cd /sys/devices/system/cpu
    echo powersave | sudo tee cpu*/cpufreq/scaling_governor
else
    echo "Invalid Input"
fi