_prompt_color() {
  status="$1"

  if [ "$status" -eq 0 ]; then
    printf '\033[32m'
  else
    printf '\033[31m'
  fi
}

prompt='\[\033[1;34m\]\W\[\033[39m\]\[`_prompt_color "$?"`\]❯\[\033[m\] '

if [ -n "$CONFIG_DISPLAY_HOSTNAME" ]; then
  prompt='\[\033[1;32m\]\u@\h\[\033[m\]:'"$prompt"
fi

PS1="$prompt"
