#!/bin/bash

if [[ $HOSTNAME =~ ^(gordon|gcn-) ]]; then
  APPS_PREFIX=/apps/gordon
elif [[ $HOSTNAME =~ ^(tscc-) ]]; then
  APPS_PREFIX=/apps/tscc
else
  echo "Unknown system $HOSTNAME" >&2
  exit 1
fi
