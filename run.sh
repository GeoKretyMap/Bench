#!/bin/bash

function usage {
  echo "$0 <file-with-urls> [<#concurrency>]"
}

if [[ -z $1 ]]; then
  echo "you must provide a file with urls."
  usage
  exit 1
fi

concurrency="100"
if [[ -n $2 ]]; then
  concurrency=$2
fi

siege -c $concurrency -b -i -d1 -f $1
