# ubuntu-in-termux

This is a script by which you can install Ubuntu in your termux application without rooted phone

# FULLY UPDATED TO UBUNTU 19.04 DISCO

Steps
1. Update termux: `apt update && apt upgrade -y`
2. Install wget, curl, git and proot: `apt install wget curl proot git -y`
3. Go to HOME folder: `cd ~`
4. Download script: `git clone https://github.com/MFDGaming/ubuntu-in-termux.git`
5. Go to script folder: cd ubuntu-in-termux`
6. Give execution permission: chmod +x ubuntu.sh
7. Run script: ./ubuntu.sh
8. Fix resolv.conf: cp ~/ubuntu-in-termux/resolv.conf ~/ubuntu-in-termux/ubuntu-fs/etc/
9. Now just start ubuntu: ./start.sh
