#!/bin/bash

# My ideal desktop for this Debian Spin is LXQt. I believe LXQt has the potential to be gorgeous. It's lightweight as Xfce is lightweight.
# LXQt is pretty cool as it allows you to use different window managers with this desktop environment, which opens the doors to numerous
# possibilities.

# The purpose of this script is to add software packages from Debian's repos to transform the bare-bones SpiralLinux Builder Edition
# into a fully fleshed out LXQt. 

# BEGIN SHELL SCRIPT
echo ""
echo "Qt Neon"
echo ""
echo "Version 0.23.04.21 (testing)"
echo ""
sleep 1
echo "The purposes of this script is to install a fully fleshed out LXQt. Packages have been hand-picked to provide the best Qt-centric"
echo "experience. I hope you enjoy this system."
echo ""

# Update the system
sudo apt update && sudo apt -Vy full-upgrade




