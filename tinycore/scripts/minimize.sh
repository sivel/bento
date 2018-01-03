#!/bin/sh -eux
# Whiteout root
dd if=/dev/zero of=/mnt/sda1/whitespace bs=1M || echo "dd exit code $? is suppressed";
rm /mnt/sda1/whitespace;

sync;
