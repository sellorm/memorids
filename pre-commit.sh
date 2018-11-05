#!/usr/bin/env bash

# make sure that R/sysdata.rda is not out of date
STATUS=0

if [[ $(stat -c '%Y' ./data-raw/nouns.txt) > $(stat -c '%Y' ./R/sysdata.rda) ]]; then
  echo "nouns.txt is newer than sysdata.rda - run 'make' in ./data-raw"
  STATUS=1
fi

if [[ $(stat -c '%Y' ./data-raw/adjectives.txt) > $(stat -c '%Y' ./R/sysdata.rda) ]]; then
  echo "adjectives.txt is newer than sysdata.rda - run 'make' in ./data-raw"
  STATUS=1
fi

if [[ ${STATUS} -ne 0 ]]; then
  exit 1
fi
