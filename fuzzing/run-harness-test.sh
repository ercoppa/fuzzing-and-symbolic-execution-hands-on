#!/bin/bash

mkdir workdir-harness-1 && cp -a harness-example/* workdir-harness-1/ || echo "Directory workdir-harness-1 already exists. Delete it manually."
docker run --rm -ti -v `pwd`/workdir-harness-1:/AFLplusplus/workdir-harness-1 -w /AFLplusplus/workdir-harness-1 aflplusplus/aflplusplus
