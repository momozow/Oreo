#!/bin/sh

docker run --rm --name oreo -v /Users/momozow/.ssh:/root/.ssh:ro -v /Users/momozow/.gitconfig:/root/.gitconfig:ro -it oreo /usr/bin/fish
