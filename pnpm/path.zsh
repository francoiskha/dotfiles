export PNPM_HOME="$HOME/Library/pnpm"
[ -d "$PNPM_HOME/bin" ] && export PATH="$PNPM_HOME/bin:$PATH"
[ -d "$PNPM_HOME" ] && export PATH="$PNPM_HOME:$PATH"
