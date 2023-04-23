#!/bin/bash

# Update the system
sudo apt update
sudo apt -Vy full-upgrade

# Installs more security-centric software that I thought was cool or useful.
sudo apt -Vy --no-install-recommends install lynis opensnitch

#

exit
