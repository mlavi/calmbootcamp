#!/usr/bin/env bash

BUILD_DIRECTORY='_build'
CLEAN='make clean'
#CLEAN=true # OVERRIDE: blank or =true for skip
LOGFILE=true # leave blank to omit, see common.lib.sh
# defaults to RepositoryName.log unless >5 character filename overridden here.
VARIANT='bootcamp' # sane default: standard bootcamp

if [[ -z ${1} ]]; then
  cat << EoM
USAGE: ${0} [configuration] [build_directory]
  - configuration: changed file or variant directory, e.g.:
    - changed file from: watchmedo ${watch_src_path}
    - variant directory: bootcamp|udacity (has VARIANT/conf.py)
  - build_directory: OPTIONAL, defaults to ${BUILD_DIRECTORY}

  Note: in theory, this could be done in the Makefile, but I'm still learning.
EoM
  exit 99
fi

clear &&
  cd $(git rev-parse --show-toplevel) &&
  source modules/common.lib.sh &&
  launch

if [[ -n ${2} ]]; then
  BUILD_DIRECTORY="${2}"
fi

# determine if ${1} is a changed file or configuration directory and set VARIANT

let _POSITION="${#1} - 4"
# TODO, search for '.' to indicate _SUFFIX
_SUFFIX=${1:_POSITION}

if [[ ${_SUFFIX} == '.rst' ]]; then
  _BASE=${1:0:_POSITION}

  if [[ -d ${_BASE} ]]; then
    log "DEBUG|${_BASE} is a directory."
    VARIANT="${_BASE}"
  fi
else
  VARIANT="${1}"
fi

case "${VARIANT}" in
  udacity | ./udacity)
    log "NOTE|see ${VARIANT}/notes.md to install sphinx extention dependency."
    CLEAN="rm -rf ${BUILD_DIRECTORY}/.doctrees/ || true"
    ;;
esac

VARIANT="-c ${VARIANT}/" # overload to final state

log "${1}|${VARIANT}" &&
  ${CLEAN} &&
  sphinx-build ${VARIANT} . ${BUILD_DIRECTORY}

log "DEBUG|BUILD_DIRECTORY=${BUILD_DIRECTORY},_BASE=${_BASE}, _SUFFIX=${_SUFFIX}, VARIANT=${VARIANT}, CLEAN=${CLEAN}|"
log "DEBUG|sphinx-build ${VARIANT} . ${BUILD_DIRECTORY}"

finish
exit 0
