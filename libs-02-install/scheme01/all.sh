#!/bin/bash

set -o nounset
DIR="$(dirname $(readlink -f $0))"

$DIR/02-init-pacman.sh
