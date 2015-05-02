#!/bin/bash

set -o nounset
source vars.sh

# ------------------------------------------------------------------------
# Partitioning
# ------------------------------------------------------------------------
echo -e "\nFormatting disk...\n$HR"
# disk prep
sgdisk -Z $DISK_DEV                         # zap all on disk
sgdisk -a 2048 -o $DISK_DEV                 # new gpt disk 2048 alignment

# create partitions
sgdisk -n 1:0:+$PART_BOOT_SIZE $DISK_DEV    # Partition 1 (UEFI BOOT)       200MB
sgdisk -n 2:0:0 $DISK_DEV                   # Partition 3 (LUKS)            rest

# set partition types
sgdisk -t 1:ef00 $DISK_DEV                  # EFI
sgdisk -t 2:8300 $DISK_DEV                  # Linux

# label partitions
sgdisk -c 1:"UEFI Boot" $DISK_DEV           # Label: UEFI Boot
sgdisk -c 2:"cryptlvm" $DISK_DEV            # Label: cryptlvm
