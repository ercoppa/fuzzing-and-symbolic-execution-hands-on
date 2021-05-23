#!/bin/bash

mkdir workdir-fuzzolic-tcpdump && cp -a fuzzolic-tcpdump/* workdir-fuzzolic-tcpdump/ || echo "Directory workdir-fuzzolic-tcpdump already exists. Delete it manually."
docker run --user `id -u`:`id -g` --rm -ti -v `pwd`/workdir-fuzzolic-tcpdump:/home/ubuntu/workdir -w /home/ubuntu/workdir ercoppa/fuzzolic-runner-v1
