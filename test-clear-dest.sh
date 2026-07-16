#!/bin/bash

set -eu

source "$(dirname "$0")/install-pkg-functions.sh"

tmpdir=$(mktemp -d)
trap 'rm -rf "${tmpdir}"' EXIT

mkdir -p \
  "${tmpdir}/anupq" \
  "${tmpdir}/anupq-3.2.1" \
  "${tmpdir}/anupq-3.3.3" \
  "${tmpdir}/anupq-tools"

clear_dest "${tmpdir}/anupq"

test ! -e "${tmpdir}/anupq"
test ! -e "${tmpdir}/anupq-3.2.1"
test ! -e "${tmpdir}/anupq-3.3.3"
test -e "${tmpdir}/anupq-tools"
