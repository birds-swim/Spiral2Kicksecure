#!/bin/bash

# This one doesn't require the user to be logged into root.
# This shell script follows the instructions on the official Kicksecure Wiki here:
# https://www.kicksecure.com/wiki/Debian

# Start the script
echo ""
echo "SPIRAL2KICKSECURE.sh"
echo "Version 0.23.04.21 (beta)"
echo ""
echo "Please enter your sudo password."
sudo echo ""
sleep 3

# Update the system
sudo apt update
sudo apt -Vy full-upgrade
echo ""

# KICKSECURE'S MIGHTY DISTRO-MORPHING POWERS
#### You can choose to install the CLI version or the Xfce version. Just switch the "cli" with "xfce" in "kicksecure-cli-host" per the
#### Kicksecure Wiki's instructions. Installing the CLI version will let you choose which Desktop Environment you want to install.
#### Optionally, you could install your own favorite Window Manager (i3, dwm, Openbox, sway, etc., etc.) and craft your system to your
#### liking.  This is SpiralLinux Builder Edition, after all.
sudo apt install --no-install-recommends kicksecure-cli-host
mkdir -v ~/.sources_backup
sudo mv -v /etc/apt/sources.list ~/.sources_backup/
sudo touch /etc/apt/sources.list

# Tell the user the sources have changed (https://www.kicksecure.com/wiki/Debian)
echo "Your sources list is now being managed by: /etc/apt/sources.list.d/debian.list"
sleep 5

# Tell the user to reboot
echo ""
echo "Please reboot your system."
echo ""
sleep 2

exit
