#!/bin/sh

set -e

cat ./packages.txt | xargs sudo npm install -g
