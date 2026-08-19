#!/bin/bash

function error_and_exit {
  echo "error: $1" >&2
  exit 1
}

CLUSTER="$1"

[ "${CLUSTER}" = "" ] && error_and_exit "undefined cluster"

set -x -e -o pipefail

flux bootstrap github \
  --token-auth \
  --owner=sfmunoz \
  --repository=flux-playground \
  --path=clusters/${CLUSTER} \
  --branch=main \
  --private=false \
  --personal=true \
  --author-name "flux-${CLUSTER}-bot" \
  --author-email "46285520+sfmunoz@users.noreply.github.com"
