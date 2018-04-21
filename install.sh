#!/bin/bash

WORKSPACE_DIR="${HOME}/.workspace"

if [[ -d ${WORKSPACE_DIR} ]] ; then
  echo "${WORKSPACE_DIR} already exists"
  exit 1
fi
git clone git@github.com:amaltbie/workspace.git ${WORKSPACE_DIR}
