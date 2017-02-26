#!/bin/bash
cd ${0%/*}/files

setup cdh-5.6

for i in $(seq -f "%02g" 0 1)
do
  fname='posts-2016-0000000000'$i'.json'
  uname="posts_2016_$i.json"
  echo "uploading file $fname as $uname"
  hadoop fs -copyFromLocal $fname $uname
done
