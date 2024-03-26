if command -v zoxide >/dev/null; then
  eval "$(zoxide init posix --hook prompt)"

  alias c=z
fi
