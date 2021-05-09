#!/bin/bash

mkdir workdir-vuln-1 && cp -a vulnerable-example-1/* workdir-vuln-1/ || echo "Directory workdir-vuln-1 already exists. Delete it manually."
docker run --rm -ti -v `pwd`/workdir-vuln-1:/AFLplusplus/workdir-vuln-1 -w /AFLplusplus/workdir-vuln-1 aflplusplus/aflplusplus
