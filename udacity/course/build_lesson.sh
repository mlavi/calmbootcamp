#!/usr/bin/env bash

COURSE=2
LESSON=0
FILESPEC=udacity/course/${COURSE}/${LESSON}/lesson.html

function concepts() {
  local _concept
  local _count=10
  local _out

  # REQUIRED: global variable ${FILESPEC}
  for ((_concept = 1; _concept < _count; _concept++)); do
    log "Concept${_concept}"
    _out='' # reset

    case ${_concept} in
      1)
        atom && _out+="${OUT}"
        atom "Meet Your Instructor: Mark Lavi" && _out+="${OUT}"
        atom && _out+="${OUT}"
        atom "$(cat udacity/course/${COURSE}/${LESSON}/meet.md)" && _out+="${OUT}"
        atom '' 'noEoL' && _out+="${OUT}"
        ;;
      4)
        atom && _out+="${OUT}"
        atom "Concept ${_concept}" && _out+="${OUT}"
        atom '' 'noEoL' && _out+="${OUT}"
        ;;
      *)
        _out+="    <li><pre>Concept${_concept}:Atom</pre><li>"
        ;;
    esac

    echo -e "${_out}" >> ${FILESPEC}
  done
}

function atom() {
  local _message='blank'
  local _return="\n"

  if [[ -n ${1} ]]; then
    _message="${1}"
  fi

  if [[ -n ${2} ]]; then
    _return=
  fi

  OUT="    <li><pre>${_message}</pre></li>${_return}"
}
# ____
cd $(git rev-parse --show-toplevel)
source modules/common.lib.sh

launch &&
  log "USAGE: rm -f ${FILESPEC} && ${0} && cat ${FILESPEC}" &&
  html_header &&
  concepts &&
  html_footer

log "NEXT|git add ${FILESPEC}"
log "NEXT|git commit -a -m \"${0}: Course ${COURSE}, Lesson ${LESSON}\" && git push"
finish
