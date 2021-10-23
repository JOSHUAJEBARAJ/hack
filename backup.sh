#!/usr/bin/bash

CHANGE="$(git status --porcelain | wc -l)"

if [ "$CHANGE" -eq 0 ]; then 
 exit 0
  echo "No changes"
fi

git pull 

git add .

git commit -q -m "Last sync:$(date)"

git push -q 
