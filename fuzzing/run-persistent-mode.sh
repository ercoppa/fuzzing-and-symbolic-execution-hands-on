#!/bin/bash

mkdir workdir-pm-1 && cp -a persistent-mode-example/* workdir-pm-1/ || echo "Directory workdir-pm-1 already exists. Delete it manually."
docker run --rm -ti -v `pwd`/workdir-pm-1:/AFLplusplus/workdir-pm-1 -w /AFLplusplus/workdir-pm-1 aflplusplus/aflplusplus
