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

printf '\n%s\n' "\$(call inherit-product, vendor/qcom/binaries/msm8992/graphics/graphics-vendor.mk)" >> "$PRODUCTMK"

# We are done!
write_footers

