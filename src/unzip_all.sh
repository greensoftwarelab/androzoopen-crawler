# !/bin/bash

cwd="$(pwd)"
for f in $(find out/downloads -type f -name "*.zip"); do
    cd "$(echo $f | xargs dirname)"
    unzip "$(echo $f | xargs basename )"
    cd "$cwd"
done