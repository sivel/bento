#!/bin/sh -eux

# set a default HOME_DIR environment variable if not set
HOME_DIR="${HOME_DIR:-/home/vagrant}";

case "$PACKER_BUILDER_TYPE" in
vmware-iso|vmware-vmx)
    yum install -y epel-release
    yum install -y open-vm-tools
    if [ -f /usr/bin/systemctl ]; then
        systemctl enable vmtoolsd
        systemctl start vmtoolsd
    else
        chkconfig vmtoolsd on
        /etc/init.d/vmtoolsd start
    fi
    ;;
esac
