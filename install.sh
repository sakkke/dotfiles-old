#!/bin/sh

set -e

abs_path() {
  path="$1"

  (cd `dirname "$path"` && echo "$PWD/`basename "$path"`")
}

link_profile() {
  src_path="$1"

  (cd "$src_path" && find -mindepth 1 -type d -print0) |
    xargs -0I {} mkdir -p "$HOME/{}"
  (cd "$src_path" && find -type f -print0 && find -type l -print0) |
    xargs -0I {} ln -sfv "`abs_path "$src_path"`/{}" "$HOME/{}"
}

if [ "$#" -gt 0 ]; then
  src_path="$1"
  link_profile "$src_path"
else
  for src_path in src/linux/*; do
    link_profile "$src_path"
  done
fi
