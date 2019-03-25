# ubuntu-in-termux
This is a script by which you can install Ubuntu in your termux application without rooted phone


Steps
1. Update termux: apt-get update && apt-get upgrade -y
2. Install wget: apt-get install wget -y
3. Install proot: apt-get install proot -y
4. Install git: apt-get install git -y
5. Go to HOME folder: cd ~
6. Download script: git clone https://github.com/strikersix23/ubuntu-in-termux.git
7. Go to script folder: cd ubuntu-in-termux
8. Give execution permission: chmod +x ubuntu.sh
9. Run script: ./ubuntu.sh
10. Fix resolv.conf: cp ~/ubuntu-in-termux/resolv.conf ~/ubuntu-in-termux/ubuntu-fs/etc/
11. Now just start ubuntu: ./start.sh
