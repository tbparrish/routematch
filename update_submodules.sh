#! /bin/bash

set -e #

BRANCH=$1

if [ -z "$BRANCH" ]; then
  BRANCH="master"
  echo "no branch supplied, using \"master\""
fi

git submodule update --init
git submodule foreach git checkout $BRANCH
git submodule foreach git pull origin $BRANCH

