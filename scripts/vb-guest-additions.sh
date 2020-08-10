#!/usr/bin/env bash

# Find latest guest additions here http://download.virtualbox.org/virtualbox/
wget http://download.virtualbox.org/virtualbox/6.1.12/VBoxGuestAdditions_6.1.12.iso
sudo mkdir /media/VBoxGuestAdditions
sudo mount -o loop,ro VBoxGuestAdditions_6.1.12.iso /media/VBoxGuestAdditions
sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
rm VBoxGuestAdditions_6.1.12.iso
sudo umount /media/VBoxGuestAdditions
sudo rmdir /media/VBoxGuestAdditions