#!/bin/bash

for f in *.pdf; do
  g=`echo "$f" | sed 's/\.pdf$/\.eps/'`
  echo "$f -> $g" 1>&2
  convert "$f" eps2:$g
done