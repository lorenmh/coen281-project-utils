#!/bin/bash
cd ${0%/*}/files

set -e

source /usr/local/sbin/setup.sh cdh-5.6

for i in $(seq -f "%02g" 0 49)
do
  fname="posts-2016-0000000000$i"
  jsname="$fname.json"
  gzname="$jsname.gz"
  upname="posts_2016_$i.json"
  echo "on file $fname"
  curl -O 'https://storage.googleapis.com/coen281-posts-2016-gz/'$fname'.json.gz'
  gunzip $gzname
  hadoop fs -copyFromLocal $jsname $upname
  rm $jsname
done
