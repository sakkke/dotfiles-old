#!/bin/sh

set -e

apk update
cat ./packages.txt | xargs apk add
