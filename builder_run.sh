#!/bin/bash
# This file will be gone
# For record, this is a command used to build android from the source, inside the docker container
docker run --user vsoc-01 --name cf_builder --privileged -v $HOME/workspace/android-src:/home/vsoc-01/android-src:rw -v $HOME/.gitconfig:/home/vsoc-01/.gitconfig --rm -it cuttlefish_builder /bin/bash
