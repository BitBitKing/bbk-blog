#!/bin/bash
echo "Blog build"
hugo -D
git add .
git commit -m "auto deploy:favicon"
git push
echo "Blog deploy success"
