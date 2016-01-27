#!/bin/bash

version=$(date +%Y%m%d%H%M%S)

git flow release start ${version}
echo ${version} > release.txt
git add release.txt
git ci -m "Version bumped"
git flow release finish -m "Version ${version}"
