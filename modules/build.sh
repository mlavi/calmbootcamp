#!/usr/bin/env bash
source modules/common.lib.sh

CLEAN='make clean'
#CLEAN='rm -rf ._build/.doctrees/ || true'
#CLEAN=true # OVERRIDE: blank or =true for skip
VARIANT='-c udacity/'
VARIANT= # OVERRIDE: blank for standard bootcamp

launch

cd $(git rev-parse --show-toplevel)
clear
log "${1}|${CLEAN}|${VARIANT}"
${CLEAN} && sphinx-build ${VARIANT} . _build

finish
