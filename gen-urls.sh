#!/bin/bash


if [[ -z $1 ]]; then
  echo "usage: $0 <number of lines>"
  exit 1
fi

for counter in $(seq 1 $1); do

  echo -n "http://api.geokretymap.org/export2.php?wpts="
  while read wpt; do 
    echo -n "${wpt},"
  done < <(shuf urls/wpt | head -n20)
  echo

done
