
function elevation::script_dir() {
  echo "$(dirname "$(readlink -f "$0")")"
}

