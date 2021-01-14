#!/bin/bash
set -eo pipefail

echo "+++ Checking value of an environment variable"
if [ -z "${TEST}" ]; then
  echo 'ERROR: Variable $GIT_SHORT_HASH is not set!!'
  exit 1
else
  echo "\$GIT_SHORT_HASH=$TEST"
fi
