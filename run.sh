#!/bin/sh

docker run \
       --rm \
       --name oreo.Go \
       -v /Users/momozow/.ssh:/root/.ssh:ro \
       -v /Users/momozow/.gitconfig:/root/.gitconfig:ro \
       -it oreo:Go /usr/bin/fish
