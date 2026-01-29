#!/usr/bin/env bash
case "${BASH_SOURCE}" in
*/*) cd "${BASH_SOURCE%/*}";;
*);;
esac

# Source the activate script with test environment
source ./activate -t

# Run tests with parallel execution
# bats --jobs "$((($(nproc) + 1) / 2))" ./test/test.bats
bats ./test/test.bats