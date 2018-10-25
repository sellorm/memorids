#!/usr/bin/env bash
set -euo pipefail

filename=${1:-default}

if [ ${filename} == "default" ]; then
    echo "Missing input file"
    exit 1
fi

# ensure all lines only contain lower case alpha chars

! grep -nv '^[a-z]*$' ${filename}

if [ $? -ne 0 ]; then
  echo "Bad characters found - please remedy (format = line:offending_word)"
  exit 2
fi

# sort & unique

sort -u ${filename} > ${filename}.tmp

! diff -sn ${filename} ${filename}.tmp

if [ $? -eq 0 ];then
  echo "overwriting original"
  mv ${filename}.tmp ${filename}
else
  echo "removing duplicate"
  rm ${filename}.tmp
fi


exit 0
