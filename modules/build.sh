#!/usr/bin/env bash

BUILD_DIRECTORY='_build'
CLEAN='make clean'
#CLEAN=true # OVERRIDE: blank or =true for skip
LOGFILE= # blank to omit
# defaults to RepositoryName.log unless >5 character filename specified.
VARIANT= # blank for standard bootcamp

if [[ -z ${1} ]]; then
  cat << EoM
USAGE: ${0} [configuration_directory] [build_directory]
  - configuration_directory: bootcamp|udacity
  - build_directory: defaults to ${BUILD_DIRECTORY}
EoM
  exit 99
else
  clear
  case "${1}" in
    udacity)
      echo "See ${1}/notes.md to install sphinx extention dependency."
      CLEAN="rm -rf ${BUILD_DIRECTORY}/.doctrees/ || true"
      ;;
    *)
      LOGFILE=true # leave blank to omit
      VARIANT="-c ${1}/"
      ;;
  esac
fi

if [[ -n ${2} ]]; then
  BUILD_DIRECTORY="${2}"
fi

cd $(git rev-parse --show-toplevel) &&
  source modules/common.lib.sh &&
  launch

log "${1}|${VARIANT}|${CLEAN}" &&
  ${CLEAN} &&
  sphinx-build ${VARIANT} . ${BUILD_DIRECTORY}

finish
exit 0
