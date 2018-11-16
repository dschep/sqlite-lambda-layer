#!/bin/bash -x

set -e

rm -rf layer && mkdir -p layer/python
docker build -t py36-sqlite-builder -f Dockerfile .
CONTAINER=$(docker run -d py36-sqlite-builder false)
docker cp \
    $CONTAINER:/var/task/python/lib/python3.6/lib-dynload/_sqlite3.cpython-36m-x86_64-linux-gnu.so \
    layer/python/.
docker rm $CONTAINER
