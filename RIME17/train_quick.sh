#!/usr/bin/env sh
set -e

TOOLS=./build/tools

$TOOLS/caffe train \
  --solver=/home/red/caffe/examples/RIME17/solver.prototxt $@

# reduce learning rate by factor of 10 after 8 epochs
