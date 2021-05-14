#!/bin/bash

mkdir workdir-slide-angr && cp -a slide-example-angr/* workdir-slide-angr/ || echo "Directory workdir-slide-angr already exists. Delete it manually."
chmod -R 777 workdir-slide-angr
docker run --rm -ti --ulimit='stack=-1:-1' -v `pwd`/workdir-slide-angr:/home/angr/workdir-slide-angr -w /home/angr/workdir-slide-angr angr/angr