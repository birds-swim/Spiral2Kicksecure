#!/bin/bash

# Update the system
sudo apt update
sudo apt -Vy full-upgrade

# Installs more security-centric software that I thought was cool or useful.
# I personally don't think debsecan is very useful to the average home user, as debsecan reports on information that you really don't have
# any control over.  It's a nice information tool, but unless you're gonna help with security patches or be proactive with this information,
# I'm not sure what you would do with debsecan. Leaving it in here because someone might find it useful.
sudo apt -Vy --no-install-recommends install lynis opensnitch usbguard debsecan tiger rkhunter auditd fail2ban endlessh needrestart apt-listbugs 
# Samhain is a File Integrity Monitoring (FIM) service and Host-based Intrusion Detection System (HIDS)
# https://www.comparitech.com/net-admin/file-integrity-monitoring-tools/
# https://www.la-samhna.de/samhain/
###-----Samhain didn't work on my Spiral2Kick during the early stages of installation and setup of all software considered.
###-----It failed to install with a dpkg error, so I removed Samhain. I do not have time to toubleshoot why it didn't work.
#sudo apt -V install samhain

# Either Kicksecure's LKRG or Debian's hardening-runtime package
#sudo apt -Vy install lkrg
#sudo apt -Vy install hardening-runtime

#

exit
