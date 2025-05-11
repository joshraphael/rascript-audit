#!/bin/bash

export CONTAINER_ID='$CONTAINER_ID'
export RASCRIPT_AUDIT_IMG_VERSION="v0.0.4"

cat templates/action.template.yml | envsubst