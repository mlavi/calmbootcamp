#!/usr/bin/env bash

_destination_format=markdown
_destination_suffix=md
#_destination_format=rst
#_destination_suffix=rst
_pandoc_options='--wrap=none'
BASE='ECA-3_0-Course-Guide_ditamap/eca/eca_5-15/for-alpha'

for _file in { \
  "$BASE/eca-5-10-02-managing-the-nutanix-cluster/topics/Prism_Overview_2.html", \
  "$BASE/eca-5-10-12-prism-central/topics/Prism_Central_Overview_2.html" \
  }; do

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
