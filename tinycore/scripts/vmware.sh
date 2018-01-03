#!/bin/sh -eux

case "$PACKER_BUILDER_TYPE" in
vmware-iso|vmware-vmx)
    tce-load -wi open-vm-tools;
    sudo /usr/local/etc/init.d/open-vm-tools start;
    echo '/usr/local/etc/init.d/open-vm-tools start > /dev/null 2>&1' >> /opt/bootlocal.sh;
    echo "platform specific vmware.sh executed";
esac
