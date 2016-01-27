#!/bin/bash

version=$(date +%Y%m%d%H%M%S)

git flow release start ${version}
echo ${version} > release.txt
git flow release finish -m "Version ${version}"
