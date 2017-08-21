#!/bin/sh -eux

# set a default HOME_DIR environment variable if not set
HOME_DIR="${HOME_DIR:-/home/vagrant}";

case "$PACKER_BUILDER_TYPE" in
vmware-iso|vmware-vmx)
    yum install -y epel-release
    yum install -y open-vm-tools
    if [ -f /sbin/chkconfig ]; then
        chkconfig vmtoolsd on
        /etc/init.d/vmtoolsd start
    else
        systemctl enable vmtoolsd
        systemctl start vmtoolsd
    fi
    ;;
esac
