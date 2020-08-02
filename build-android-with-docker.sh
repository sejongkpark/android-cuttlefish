#!/bin/bash


# commands:
#
# nothing given: by default, it will run the docker container with /bin/bash 
# init: run repo init in the android_src directory
# sync: run repo sync
# build: run build the android src dir in the docker container
#

source "shflags"

DEFINE_string android_src "" "android source"
DEFINE_integer ncpu 4 "default CPU to determine -j for sync & build"

FLAGS "$@" || exit 1
eval set -- "${FLAGS_ARGV}"!

echo ${FLAGS_android_src}
echo $*
