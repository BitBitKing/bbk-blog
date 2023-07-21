#!/bin/bash
echo "Blog build"
hugo -D
git status -s
git add .
git commit -m "auto deploy"
git push
echo "Blog deploy success"
git status -s
