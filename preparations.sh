#!/bin/bash

# Check if user is root or not
if [ "$(id -u)" -ne 0 ]; then
    log ERROR "You must run this script as root!"
    exit 1
fi

# Check if user is x86_64 or not
if [ "$(uname -m)" != x86_64 ]; then
    log ERROR "Architecture not supported"
    exit 1
fi

# Begin shell script
echo "This shell script creates new groups and adds the 'user' to them. These groups are needed by Kicksecure and QEMU."
echo "Additional repositories are also added. Kicksecure and Liquorix."

# Update the system first
apt update && apt -Vy full-upgrade && apt install --no-install-recommends sudo adduser #Just in case.

# Kicksecure: Create new groups and add the user to them. (https://www.kicksecure.com/wiki/Debian)
/usr/sbin/addgroup --system console
/usr/sbin/adduser user console

# QEMU -- Source: https://help.ubuntu.com/community/KVM/Installation The goal is virt manager.
#### UNDER CONSTRUCTION
#sudo apt -Vy install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils
#sudo adduser `id -un` libvirt
#sudo adduser `id -un` kvm

# Add Kicksecure's stuff: (https://www.kicksecure.com/wiki/Debian)
echo "ADDING KICKSECURE TO SOFTWARE SOURCES"
echo ""
curl  --tlsv1.3 --output /usr/share/keyrings/derivative.asc --url https://www.kicksecure.com/keys/derivative.asc
sudo apt -Vy install apt-transport-tor tor
echo "deb [signed-by=/usr/share/keyrings/derivative.asc] tor+http://deb.w5j6stm77zs6652pgsij4awcjeel3eco7kvipheu6mtr623eyyehj4yd.onion bullseye main contrib non-free" | sudo tee /etc/apt/sources.list.d/derivative.list

# Add Liquorix's stuff: (https://liquorix.net/)
# This is entirely optional.
#### I know Liquorix is NOT a security centric kernel and target audience is gamers. I wanted it to be available for my system.
#echo "ADDING LIQUORIX TO SOFTWARE SOURCES"
#echo ""
#### METHOD 1
#curl -s 'https://liquorix.net/install-liquorix.sh' | sudo bash
#### METHOD 2
#sudo add-apt-repository ppa:damentz/liquorix

# Update the system
apt update && apt -Vy full-upgrade

# Tell the user the preparations are done and reboot is needed.
echo ""
echo ""
echo "PREPERATIONS COMPLETE."
echo ""
sleep 1
echo "Step 1 is finished."
echo "Please save your work, and then reboot your system."
echo ""
sleep 2

exit
