#!/bin/bash

# This one doesn't require the user to be logged into root.
# This shell script follows the instructions on the official Kicksecure Wiki here:
# https://www.kicksecure.com/wiki/Debian

# Start the script
echo ""
echo "SPIRAL2KICKSECURE.sh"
echo "Version 0.23.04.21 (beta)"
echo ""
echo "Kicksecure is made by the same smart folks who created Whonix. Whonix is based on Kicksecure."
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
echo "Please read the bottom of Kicksecure's Installation Guide and consider enabling/switching to Debian's Onion Repositories."
echo "They are the same as Debian's normal repos (same software) except the onionized servers act as a Tor Hidden Service."
echo "This allows for greater privacy, security, and anonymity for higher threat models."
echo "NOTE:  Updates WILL BE noticably slower since the updates must travel over the Tor Network."
echo ""
echo "You can enable the Debian Onionized Repos by visiting:"
echo "https://www.whonix.org/wiki/Onionizing_Repositories#Onionize_debian.list"
sleep 2
echo ""
echo ""
echo "ATTENTION:  A reboot of your machine is required. Please save your work, and then reboot your machine."
echo ""
sleep 3
echo "Thank you for using my shell script"
sleep 1

exit
