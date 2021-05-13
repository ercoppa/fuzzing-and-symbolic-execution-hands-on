#!/bin/bash

mkdir workdir-regex-klee && cp -a regex-klee/* workdir-regex-klee/ || echo "Directory workdir-regex-klee already exists. Delete it manually."
chmod -R 777 workdir-regex-klee
docker run --rm -ti --ulimit='stack=-1:-1' -v `pwd`/workdir-regex-klee:/home/klee/workdir-regex-klee -w /home/klee/workdir-regex-klee klee/klee:2.1