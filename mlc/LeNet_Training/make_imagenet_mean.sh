#!/usr/bin/env sh
# Compute the mean image from the imagenet training lmdb
# N.B. this is available in data/ilsvrc12

EXAMPLE=/home/zhangyi/MNIST/examples
DATA=/home/zhangyi/MNIST/examples
TOOLS=/opt/caffe/build/tools
RESIZE=true

$TOOLS/compute_image_mean $EXAMPLE/mnist_train_lmdb \
  $DATA/lenet_mean.binaryproto

echo "Done."
