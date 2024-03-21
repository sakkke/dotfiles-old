#!/bin/sh

set -e

(cd src && find -type f -print0) |
  xargs -0I {} ln -sfv "$PWD/src/{}" "$HOME/{}"
