prompt='\[\033[1;34m\]\w\[\033[m\]\$ '

if [ -n "$CONFIG_DISPLAY_HOSTNAME" ]; then
  prompt='\[\033[1;32m\]\u@\h\[\033[m\]:'"$prompt"
fi

PS1="$prompt"
