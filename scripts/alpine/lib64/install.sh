#!/bin/sh

set -e

mkdir -p /lib64
ln -sfv /lib/ld-linux-x86-64.so.2 /lib64
