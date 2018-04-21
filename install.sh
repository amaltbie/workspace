#!/bin/bash

WORKSPACE_DIR="${HOME}/.workspace"

test -d ${WORKSPACE_DIR} || git clone git@github.com:amaltbie/workspace.git ${WORKSPACE_DIR}
cd ${WORKSPACE_DIR}
git pull
