#compdef clever
autoload -U +X bashcompinit && bashcompinit
_clever()
{
  local ARGS COMPGENCMD

  cur=${COMP_WORDS[COMP_CWORD]};

  ARGS=(--autocomplete-index $COMP_CWORD)
  for word in ${COMP_WORDS[@]}; do
    ARGS=(${ARGS[@]}  --autocomplete-words="$word")
  done

  COMPGENCMD=( $(/usr/local/bin/clever "${ARGS[@]}") )

  COMPREPLY=( $(eval ${COMPGENCMD[@]}) )

  return 0;
}
complete -o nospace -F _clever clever
