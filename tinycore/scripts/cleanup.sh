#!/bin/sh -eux
sudo rm /usr/local/etc/ssh/*key*
set +e
find /mnt/sda1/tce/optional -type f | egrep -v 'openssh|openssl|open-vm-tools|glib2|fuse|libdnet|procps|libffi|pcre' | xargs rm;
set -e
yes | backup
