# Spiral2Kicksecure
An amatuer's attempt at bringing "hardened" security to the Debian desktop. Really just a bundle or collection of different third-party softwares into one shell script.
2023.04.21

Full Disclosure:

I have no idea what I'm doing.  I am new to GitHub and this is my first project.  But learning is fun, and I hope this project is useful anyway. Should this be public? I dunno. Could be private.

# Notice:
I claim no originality: I borrow a lot from other software projects (my favorites) on GitHub and include them in this shell script. This may or may not create a "Franken Debian" at the end. I don't know. You'd have to be the judge on that. Got some ideas, though! Really, really excited about it. Still learning about cybersecurity that it's a journey and not a destination.  I have some goofy requirements before you can use my shell script. The ultimate goal of this shell script is to take a fresh SpiralLinux Builder Edition installation and transform it into Kicksecure. According to my research, this is not supported by either SpiralLinux or Kicksecure.

# Goals:
To make my own SpiralLinux/Debian/Kicksecure "spin". Maybe if I had more free time, I could learn how create my own ISO and learn how to configure Calamares and then include it with the ISO.  But this (very elementary) Bash script will do for now.  I want to make this like a security layer of sorts, so that it doesn't mess with the User's current desktop environment.

# Requirements:
1.  A copy of SpiralLinux Builder Edition here:  https://spirallinux.github.io 
2.  A local user account literally named "user". I chose the account you create upon installing SpiralLinux to be named "User".
3.  Dual core processor.
4.  4 GB of RAM.
5.  20 GB or 40 GB minimum disk space. 
6.  Never switch to Debian's Testing or Unstable branches (Kicksecure depends on Debian Stable).
7.  This shell script assumes that you're installing onto bare metal and NOT a Virtual Machine. You'll have to change the shell script for Virtual Machines.

# Special Thanks
If the SpiralLinux project and the Kicksecure project didn't exist, then neither would this humble shell script. Please consider donating to either project. They make cool software.

# Closing
Thanks for visiting a GitHub newborn's repo. Baby steps! One foot forward, and all that. If you have any problems, objections, comments, rants, praises, or suggestions, then please let me know.
