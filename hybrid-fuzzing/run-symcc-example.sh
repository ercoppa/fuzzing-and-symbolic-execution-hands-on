#!/bin/bash

mkdir workdir-symcc-example && cp -a symcc-example/* workdir-symcc-example/ || echo "Directory workdir-symcc-example already exists. Delete it manually."
docker run --user `id -u`:`id -g` --rm -ti -v `pwd`/workdir-symcc-example:/home/ubuntu/workdir-symcc-example -w /home/ubuntu/workdir-symcc-example ercoppa/symcc
