#!/bin/sh

set -e

(cd src && find -mindepth 1 -type d -print0) |
  xargs -0I {} mkdir -p "$HOME/{}"
(cd src && find -type f -print0) |
  xargs -0I {} ln -sfv "$PWD/src/{}" "$HOME/{}"
