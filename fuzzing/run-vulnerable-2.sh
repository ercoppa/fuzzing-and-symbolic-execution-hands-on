#!/bin/bash

mkdir workdir-vuln-2 && cp -a vulnerable-example-2/* workdir-vuln-2/ || echo "Directory workdir-vuln-2 already exists. Delete it manually."
docker run --rm -ti -v `pwd`/workdir-vuln-2:/AFLplusplus/workdir-vuln-2 -w /AFLplusplus/workdir-vuln-2 aflplusplus/aflplusplus
