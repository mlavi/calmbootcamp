#!/usr/bin/env bash

LOGFILE=true # leave blank to omit
# defaults to RepositoryName.log unless >5 character filename specified.
CLEAN='make clean'
#CLEAN='rm -rf ._build/.doctrees/ || true'
#CLEAN=true # OVERRIDE: blank or =true for skip
VARIANT='-c udacity/'
VARIANT= # OVERRIDE: blank for standard bootcamp

clear &&
  cd $(git rev-parse --show-toplevel) &&
  source modules/common.lib.sh &&
  launch

log "${1}|${VARIANT}|${CLEAN}" &&
  ${CLEAN} &&
  sphinx-build ${VARIANT} . _build

finish
