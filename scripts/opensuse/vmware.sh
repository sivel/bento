#!/bin/sh -eux

case "$PACKER_BUILDER_TYPE" in
vmware-iso|vmware-vmx)
    zypper addrepo http://download.opensuse.org/repositories/Virtualization:VMware/openSUSE_Leap_42.3/Virtualization:VMware.repo
    zypper refresh
    zypper install open-vm-tools
    echo "platform specific vmware.sh executed";
esac
