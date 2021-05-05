#!/bin/bash

docker run --rm -ti -v `pwd`/workdir:/AFLplusplus/workdir -w /AFLplusplus/workdir aflplusplus/aflplusplus
