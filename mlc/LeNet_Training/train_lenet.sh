#!/usr/bin/env sh
set -e

./opt/caffe/build/tools/caffe train --solver=/home/zhangyi/MNIST/examples/lenet_solver.prototxt $@
