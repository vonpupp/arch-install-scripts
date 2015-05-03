#!/bin/bash

set -o nounset
source vars.sh

# ------------------------------------------------------------------------
# MOUNT
# ------------------------------------------------------------------------
echo -e "\nMounting partitions...\n$HR"
mount /dev/sda2 /mnt
mkdir -p /mnt/boot
mount /dev/sda1 /mnt/boot
