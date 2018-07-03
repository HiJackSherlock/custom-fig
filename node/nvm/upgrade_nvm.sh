#!/bin/sh
set -e
cd ~/.nvm
git fetch --tags
TAG=$(git describe --tags `git rev-list --tags --max-count=1`)
echo "Checking out tag $TAG..."
git checkout "$TAG"
source ~/.nvm/nvm.sh
