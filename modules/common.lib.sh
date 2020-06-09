#!/usr/bin/env bash
# derived from https://github.com/mlavi/stageworkshop/blob/master/scripts/lib.common.sh

function launch() {
  local _release

  if [[ -e ${RELEASE} ]]; then
    _release="|release: $(grep FullSemVer ${RELEASE} | awk -F\" '{print $4}')"
  fi

  log "$(basename ${0})${_release}|=============="
}

function finish() {
  log "${0}|${SECONDS}|executed in ${SECONDS} seconds."
  echo
}

function log() {
  local _caller
  local _hold
  local _logfile

  if ((${#LOGFILE} > 5)); then
    _logfile=${LOGFILE}
  else
    _logfile=$(basename $(git rev-parse --show-toplevel)).log
  fi

  _caller=$(echo -n "$(caller 0 | awk '{print $2}')")
  _hold="$(date '+%Y-%m-%d %H:%M:%S')|$$|${_caller}|${1}"

  if [[ -n ${LOGFILE} ]]; then
    echo ${_hold} >> ${_logfile}
  fi

  echo ${_hold}
}
