#!/bin/bash

curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=16riNokyZLIXQnfmAcEQy8BfQOXzvZXX8" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=16riNokyZLIXQnfmAcEQy8BfQOXzvZXX8" -o resources.tar.gz
tar -zxvf resources.tar.gz
rm resources.tar.gz

echo Download finished.
