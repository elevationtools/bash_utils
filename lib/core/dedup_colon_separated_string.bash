
function elevation::dedup_colon_separated_string() {
  orig="${1:?}"
  local -A seen
  local -a clean
  local IFS=":"
  for x in $orig; do
    if [[ "${seen[$x]:-no}" = 1 ]]; then
      continue
    fi
    seen[$x]=1
    clean+=($x)
  done
  echo "${clean[*]}"
}

