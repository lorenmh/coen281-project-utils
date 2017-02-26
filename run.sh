#!/bin/bash
cd ${0%/*}

set -e

hfile='posts_all.json'

for i in $(seq -f "%02g" 0 49)
do
  fname="posts-2016-0000000000$i.json.gz"
  url="https://storage.googleapis.com/coen281-posts-2016-gz/$fname"
  echo "on file $hfile"
  curl $url | gunzip -c >> $hfile
done

source /usr/local/sbin/setup.sh cdh-5.6
hadoop fs -copyFromLocal $hfile $hfile
