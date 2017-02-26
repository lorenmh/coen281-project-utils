#!/bin/bash
cd ${0%/*}/files

for i in $(seq -f "%02g" 0 49)
do
  fname='posts-2016-0000000000'$i'.json.gz'
  echo "unzipping $fname"
  gunzip $fname
done
