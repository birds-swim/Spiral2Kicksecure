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

##---------------------------------------------------------##
#     COMMAND LINE TOOLS, BASH GOODIES, AND OTHER TWEAKS    #
##---------------------------------------------------------##

# Command line tools and bash goodies (https://terminalsare.sexy)
sudo apt -Vy --no-install-recommends fzf hstr neofetch mc bpytop micro
###---------Bash-it (https://github.com/Bash-it/bash-it)
echo "Installing Bash-it"
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it && chmod -v +x ~/.bash_it/install.sh && bash ~/.bash_it/install.sh
###---------Liquidprompt (https://github.com/nojhan/liquidprompt)
echo "Installing Liquidprompt"
sudo apt -Vy install liquidprompt && liquidprompt_activate && source .bashrc
echo "Please read the Liquidpromt docs here:"
echo "https://liquidprompt.readthedocs.io/en/latest/overview.html"
echo ""
###---------Deb-Get
curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get
###---------APT Tweaks:
sudo apt -Vy install apt-config-icons apt-transport-tor apt-listbugs


###---------------------------------------------------------------###
#         LXQt COMPONENTS, AND WM TWEAKS
###---------------------------------------------------------------###
#-----LXQt STUFF:
sudo apt -Vy --no-install-recommends install 
#-----KWin Stuff:
sudo apt -Vy --no-install-recommends install 
#-----Openbox + Picom + Other Goodies
sudo apt -Vy --no-install-recommends install qt5ct qt5-style-kvantum qt5-style-kvantum-themes picom






exit
