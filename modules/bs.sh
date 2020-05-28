#!/usr/bin/env bash

_clean='make clean'
#_clean='rm -rf ._build/.doctrees/ || true'
#_clean=true # OVERRIDE: true for skip
_udacity='-c udacity/'
#_udacity= # OVERRIDE: blank for standard bootcamp

ghq-cd calmbootcamp
clear
date
echo "-- ${watch_src_path}"
${_clean} && sphinx-build ${_udacity} . _build
echo
