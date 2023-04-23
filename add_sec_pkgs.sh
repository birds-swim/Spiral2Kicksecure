#!/bin/bash

# Update the system
sudo apt update
sudo apt -Vy full-upgrade

# Installs more security-centric software that I thought was cool or useful.
sudo apt -Vy --no-install-recommends install lynis opensnitch usbguard debsecan

# Either Kicksecure's LKRG or Debian's hardening-runtime package
#sudo apt -Vy install lkrg
#sudo apt -Vy install hardening-runtime

#

exit
