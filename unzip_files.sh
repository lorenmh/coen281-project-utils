#!/bin/bash
cd ${0%/*}/files

for i in $(seq -f "%02g" 0 1)
do
  gunzip 'posts-2016-0000000000'$i'.json.gz'
done
