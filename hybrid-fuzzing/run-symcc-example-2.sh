#!/bin/bash

mkdir workdir-symcc-example-2 && cp -a symcc-example-2/* workdir-symcc-example-2/ || echo "Directory workdir-symcc-example-2 already exists. Delete it manually."
docker run --user `id -u`:`id -g` --rm -ti -v `pwd`/workdir-symcc-example-2:/home/ubuntu/workdir-symcc-example-2 -w /home/ubuntu/workdir-symcc-example-2 ercoppa/symcc
