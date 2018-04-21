#!/bin/bash

WORKSPACE_DIR="${HOME}/.workspace"

test -d ${WORKSPACE_DIR} && (
  echo "${WORKSPACE_DIR} already exists";
  exit 1
)
git clone git@github.com:amaltbie/workspace.git ${WORKSPACE_DIR}
