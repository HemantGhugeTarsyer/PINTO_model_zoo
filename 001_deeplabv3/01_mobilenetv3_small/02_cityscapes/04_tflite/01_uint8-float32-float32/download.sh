#!/bin/bash

curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1vm51VfBkWkhtHc0OE1CPSBaeupad-iqq" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1vm51VfBkWkhtHc0OE1CPSBaeupad-iqq" -o deeplab_mnv3_small_cityscapes_trainfine.tflite

echo Download finished.
