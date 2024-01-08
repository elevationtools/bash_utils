
function elevation_bash_utils_repo_activate_bash() {
  export REPO_ROOT="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

  . "$REPO_ROOT/activate.sh"
  # TODO: clean up PATH

  export PS1="(elbash) ${PS1#(elbash) }"
}

elevation_bash_utils_repo_activate_bash

