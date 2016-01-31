#!/bin/bash

for f in *.png; do
  g=`echo "$f" | sed 's/\.png$/\.eps/'`
  echo "$f -> $g" 1>&2
  convert "$f" eps3:$g
done