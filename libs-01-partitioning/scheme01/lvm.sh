#!/bin/bash

set -o nounset
source vars.sh

# ------------------------------------------------------------------------
# LVM
# ------------------------------------------------------------------------
echo -e "\nCreating logical volumes...\n$HR"
pvcreate $INSTALL_DEV
vgcreate storage $INSTALL_DEV
lvcreate --size $PART_ROOT_SIZE storage --name root
lvcreate --size $PART_SWAP_SIZE storage --name swap
lvcreate -l +100%FREE storage --name home
