#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
# check "west init" west init -l ${templateOption:imageVariant}

# Report result
reportResults
