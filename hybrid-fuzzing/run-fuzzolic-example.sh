#!/bin/bash

mkdir workdir-fuzzolic-example && cp -a fuzzolic-example/* workdir-fuzzolic-example/ || echo "Directory workdir-fuzzolic-example already exists. Delete it manually."
docker run --user `id -u`:`id -g` --rm -ti -v `pwd`/workdir-fuzzolic-example:/home/ubuntu/workdir -w /home/ubuntu/workdir ercoppa/fuzzolic-runner-v1
