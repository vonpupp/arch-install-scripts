#!/bin/bash

set -o nounset
source vars.sh

# ------------------------------------------------------------------------
# MOUNT
# ------------------------------------------------------------------------
echo -e "\nMounting partitions...\n$HR"
mount /dev/storage/root /mnt
mkdir -p /mnt/boot
mount /dev/sda1 /mnt/boot
mkdir -p /mnt/home
mount /dev/storage/home /mnt/home
