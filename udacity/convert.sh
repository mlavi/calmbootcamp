#!/usr/bin/env bash

_destination_format=markdown
_destination_suffix=md
#_destination_format=rst
#_destination_suffix=rst
_pandoc_options='--wrap=none'

#for _file in {'Udacity Nanodegree Hybrid Cloud Engineer.docx','Udacity Nanodegree Hybrid Cloud Engineer.odt'}; do
for _file in 'Udacity Nanodegree Hybrid Cloud Engineer.odt'; do

  _file_base=$(echo "${_file}" | awk -F. '{print $1}')
  _file_suffix=$(echo "${_file}" | awk -F. '{print $2}')
  _file_output="${_file_base}.${_file_suffix}.${_destination_suffix}"

  case ${_file_suffix} in
    *)
      echo "--${_file_output}"
      pandoc ${_pandoc_options} \
        --from=${_file_suffix} --to=${_destination_format} \
        --output="${_file_output}" "${_file}"
      ;;
  esac

done
