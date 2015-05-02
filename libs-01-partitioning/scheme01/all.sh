#!/bin/bash

set -o nounset
DIR="$(dirname $(readlink -f $0))"

$DIR/partition.sh
$DIR/luks.sh
$DIR/lvm.sh
$DIR/format.sh
$DIR/mount.sh
