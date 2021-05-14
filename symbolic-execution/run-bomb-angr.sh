#!/bin/bash

mkdir workdir-bomb-angr && cp -a linux-bomb/* workdir-bomb-angr/ || echo "Directory workdir-bomb-angr already exists. Delete it manually."
chmod -R 777 workdir-bomb-angr
docker run --rm -ti --ulimit='stack=-1:-1' -v `pwd`/workdir-bomb-angr:/home/angr/workdir-bomb-angr -w /home/angr/workdir-bomb-angr angr/angr