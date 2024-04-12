# Credits to https://coderwall.com/p/jpj_6q/zsh-better-history-searching-with-arrow-keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search      # Arrow Up
bindkey "^[[B" down-line-or-beginning-search    # Arrow Down
bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char

# tell remote hosts to use byobu, if available
export LC_TERMTYPE=byobu
export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

fpath+=$DOTFILES/functions

autoload -U $DOTFILES/functions/*(:t)

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=$HISTSIZE
HIST_STAMPS="yyyy-mm-dd"
HISTORY_IGNORE="(ls|cd|pwd|exit|cd)*"

setopt NO_BG_NICE            # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS         # allow functions to have local options
setopt LOCAL_TRAPS           # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY         # share history between sessions
setopt EXTENDED_HISTORY      # add timestamps to history
setopt APPEND_HISTORY        # adds history
setopt INC_APPEND_HISTORY    # Write to the history file immediately, not when the shell exits.
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_SPACE     # Do not record an event starting with a space.
setopt HIST_VERIFY           # Do not execute immediately upon history expansion.
setopt HIST_NO_STORE         # Don't store history commands
setopt HIST_REDUCE_BLANKS    # Remove superfluous blanks from each command line being added to the history
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
# setopt IGNORE_EOF # empêche ctrl+d de délogguer

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

zle -N newtab

