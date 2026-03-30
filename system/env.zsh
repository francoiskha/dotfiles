# export EDITOR='code'
if [[ "$(uname -s)" == "Darwin" ]]; then
  export HOMEBREW_CASK_OPTS="--appdir=/Applications"
fi