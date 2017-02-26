#!/bin/bash
cd ${0%/*}/files

for i in $(seq -f "%02g" 0 49)
do
  curl -O 'https://storage.googleapis.com/coen281-posts-2016-gz/posts-2016-0000000000'$i'.json.gz'
done