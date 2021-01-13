#!/bin/bash
set -eo pipefail

echo "+++ Checking value of an environment variable"
if [ -z "${GIT_SHORT_HASH}" ]; then
  echo 'ERROR: Variable $GIT_SHORT_HASH is not set!!'
  exit 1
else
  echo "\$GIT_SHORT_HASH=$GIT_SHORT_HASH"
fi
