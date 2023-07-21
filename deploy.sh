#!/bin/bash
echo "Blog build"
hugo -D
git add .
git commit -m "auto deploy:post"
git push
echo "Blog deploy success"
