#!/bin/bash

export PLAYGROUND="playground"
export GENERATED_FILE="${PLAYGROUND}/action2.yml"
export GE

rm -rf ${PLAYGROUND}
mkdir -p ${PLAYGROUND}
cp action.yml ${PLAYGROUND}
./scripts/template.sh > ${GENERATED_FILE}

if cmp -s ${PLAYGROUND}/action.yml ${GENERATED_FILE}; then
  echo "The files are identical."
  exit 0
fi

echo "The files are different."
diff ${PLAYGROUND}/action.yml ${GENERATED_FILE}
exit 1