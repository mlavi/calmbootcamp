#!/usr/bin/env bash
# derived from https://github.com/mlavi/stageworkshop/blob/master/scripts/lib.common.sh

function finish() {
  log "${0}|${SECONDS}|executed in ${SECONDS} seconds."
  echo
}

function html_footer() {
  # REQUIRED: global variable ${FILESPEC}
  cat << EoM >> ${FILESPEC}
  </ol>
</body>
</html>
EoM
}

function html_header() {
  # REQUIRED: global variable ${FILESPEC}, ${COURSE}, ${LESSON}
  cat << EoM > ${FILESPEC}
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Course ${COURSE}.sheet:L${LESSON}.tab:\$F2.cell</title>
</head>
<body>
  <ol>
EoM
}

function launch() {
  local _release

  # OPTIONAL: global variable ${RELEASE}
  if [[ -e ${RELEASE} ]]; then
    _release="|release: $(grep FullSemVer ${RELEASE} | awk -F\" '{print $4}')"
  fi

  log "$(basename ${0})${_release}|=============="
}

function log() {
  local _caller
  local _hold

  _caller=$(echo -n "$(caller 0 | awk '{print $2}')")
  _hold="$(date '+%Y-%m-%d %H:%M:%S')|$$|${_caller}|${1}"

  # OPTIONAL: global variable ${LOGFILE}
  if [[ -n ${LOGFILE} ]]; then
    local _logfile

    if ((${#LOGFILE} > 5)); then
      _logfile=${LOGFILE}
    else
      _logfile=$(basename $(git rev-parse --show-toplevel)).log
    fi

    echo ${_hold} >> ${_logfile}
  fi

  echo ${_hold}
}
