#! /usr/bin/env sh

set -e

if [ -z "${*}" ]; then
  echo "ERROR: Please provide a commit message" >&2
  exit 1
fi

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

hugo
cd public
git add .
git commit -m "${*}"
git push origin master
