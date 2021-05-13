#!/bin/bash

mkdir workdir-slide-klee && cp -a slide-example-klee/* workdir-slide-klee/ || echo "Directoryworkdir-slide-klee already exists. Delete it manually."
chmod -R 777 workdir-slide-klee
docker run --rm -ti --ulimit='stack=-1:-1' -v `pwd`/workdir-slide-klee:/home/klee/workdir-slide-klee -w /home/klee/workdir-slide-klee klee/klee:2.1