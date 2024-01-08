
elevation_bash_utils_repo_activate_sh() {
  REPO_ROOT="$PWD"
  while ! test -e "$REPO_ROOT/elevationtools_bash_utils_repo_root_marker"; do
    prev_REPO_ROOT="$REPO_ROOT"
    REPO_ROOT="$(dirname "$REPO_ROOT")"
    if test "$REPO_ROOT" = "prev_REPO_ROOT"; then
      echo "Couldn't find repo root marker" >&2
      return 1
    fi
  done

  export REPO_ROOT
  export PATH="$REPO_ROOT/deps/bin:$PATH"
  export MAKO_ROOT="$REPO_ROOT/deps/mako/lib"
  export ELEVATION_BASH_UTILS="$REPO_ROOT/lib"
}

elevation_bash_utils_repo_activate_sh

