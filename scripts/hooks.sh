#!/bin/bash

export CHECK_SCRIPT="scripts/check.sh"
export HOOKS_DIR=".git/hooks"
export PRE_COMMIT_FILE="${HOOKS_DIR}/pre-commit"
mkdir -p ${HOOKS_DIR}
rm -rf ${PRE_COMMIT_FILE}
cp ${CHECK_SCRIPT} ${PRE_COMMIT_FILE}
