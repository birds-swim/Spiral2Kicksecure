#!/bin/bash

###---------------------------------INTRODUCTION-----------------------------###
# Installs more security-centric software that I thought was cool or useful.

# Update the system
sudo apt update
sudo apt -Vy full-upgrade

# I personally don't think debsecan is very useful to the average home user, as debsecan reports on information that you really don't have
# any control over.  It's a nice information tool, but unless you're gonna help with security patches or be proactive with this information,
# I'm not sure what you would do with debsecan. Leaving it in here because someone might find it useful.
sudo apt -Vy --no-install-recommends install lynis opensnitch debsecan tiger rkhunter auditd fail2ban endlessh needrestart apt-listbugs 

###--------------------USBGUARD--------------------###
## Please configure this after installing! Your keyboard or mouse might not work if you don't check the config.
## https://usbguard.github.io/
## https://wiki.archlinux.org/title/USBGuard
#sudo apt -Vy --no-install-recommends usbguard


###--------------------------------SAMHAIN--------------------------------------###
## Samhain is a File Integrity Monitoring (FIM) service and Host-based Intrusion Detection System (HIDS)
## https://www.comparitech.com/net-admin/file-integrity-monitoring-tools/
## https://www.la-samhna.de/samhain/
####-----Samhain didn't work on my Spiral2Kick during the early stages of installation and setup of all software considered.
####-----It failed to install with a dpkg error, so I removed Samhain. I do not have time to toubleshoot why it didn't work (for me).
#sudo apt -V install samhain
###-----------------------------------------------------------------------------###

# Debian's hardening-runtime package:
# Please compare hardening-runtime VS. LKRG
# https://salsa.debian.org/corsac/hardening-runtime
# https://lkrg.org/
sudo apt -Vy hardening-runtime



###--------------------KICKSECURE STUFF-------------------------##
####------Kicksecure's hardened-kernel & LKRG is currently for testers only. https://www.kicksecure.com/wiki/Hardened-kernel 
#sudo apt -Vy install lkrg 
#sudo apt -Vy install hardened-kernel
###-------------------------------------------------------------##


###-------------------------HBLOCK------------------------------##
# Install hblock for /etc/hosts content filtering!
###-------https://github.com/hectorm/hblock
curl -o /tmp/hblock 'https://raw.githubusercontent.com/hectorm/hblock/v3.4.1/hblock' \
  && echo 'bb1f6fcafdcba6f7bd9e12613fc92b02a0a0da1263b0e44d209cb40d8715d647  /tmp/hblock' | shasum -c \
  && sudo mv /tmp/hblock /usr/local/bin/hblock \
  && sudo chown 0:0 /usr/local/bin/hblock \
  && sudo chmod 755 /usr/local/bin/hblock
# Set a timer to update lists for hblock daily
###-------https://github.com/hectorm/hblock/tree/master/resources/systemd
curl -o '/tmp/hblock.#1' 'https://raw.githubusercontent.com/hectorm/hblock/v3.4.1/resources/systemd/hblock.{service,timer}' \
  && echo '45980a80506df48cbfa6dd18d20f0ad4300744344408a0f87560b2be73b7c607  /tmp/hblock.service' | shasum -c \
  && echo '87a7ba5067d4c565aca96659b0dce230471a6ba35fbce1d3e9d02b264da4dc38  /tmp/hblock.timer' | shasum -c \
  && sudo mv /tmp/hblock.{service,timer} /etc/systemd/system/ \
  && sudo chown 0:0 /etc/systemd/system/hblock.{service,timer} \
  && sudo chmod 644 /etc/systemd/system/hblock.{service,timer} \
  && sudo systemctl daemon-reload \
  && sudo systemctl enable hblock.timer \
  && sudo systemctl start hblock.timer
###-------------------------------------------------------------##

#
echo ""
echo ""
echo "Fail2Ban, endlessh, usbguard, and hblock (with systemd-timer) need to be customized."
echo "ESPECIALLY USBGUARD (IF IT WAS INSTALLED)."
echo "https://wiki.archlinux.org/title/USBGuard#Usage"
echo "YOU HAVE BEEN WARNED."
echo "Do that now before rebooting."
echo ""
sleep 2

exit
