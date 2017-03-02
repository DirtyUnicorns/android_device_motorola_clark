#!/bin/bash

set -e

DEVICE=clark
VENDOR=motorola

# Load extractutils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

# Copyright headers and guards
write_headers

# The blobs
write_makefiles "$MY_DIR"/proprietary-files.txt

# We are done!
write_footers

