#!/bin/bash

set -o nounset
source vars.sh

# ------------------------------------------------------------------------
# FORMAT
# ------------------------------------------------------------------------
echo -e "\nFormating partitions...\n$HR"
mkfs.vfat -F32 /dev/sda1
mkfs.ext4 /dev/sda2
