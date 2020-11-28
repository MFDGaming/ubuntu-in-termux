# ubuntu-in-termux
[![DISCORD](https://img.shields.io/badge/Chat-On%20Discord-738BD7.svg?style=for-the-badge)](https://discord.gg/Xaqkdeh)

## What's This?

This is a script by which you can install Ubuntu in your termux application without a rooted device

## Updates
**• Updated to ubuntu 20.04**

## Important

**• Who ever wants to still use ubuntu in termux with a x86/i*86 architecture or likes to use ubuntu 19.10 he/she can use this branch -> https://github.com/MFDGaming/ubuntu-in-termux/tree/ubuntu19.10**

**• If you get "Fatal Kernel too old" you have to uncomment the line that writes "command+=" -k 4.14.81"" (remove the # that is located in front of the line) in the "startubuntu.sh" file**
 
### Installation steps
1. Update termux: `apt-get update && apt-get upgrade -y`
2. Install wget: `apt-get install wget -y`
3. Install proot: `apt-get install proot -y`
4. Install git: `apt-get install git -y`
5. Go to HOME folder: `cd ~`
6. Download script: `git clone https://github.com/MFDGaming/ubuntu-in-termux.git`
7. Go to script folder: `cd ubuntu-in-termux`
8. Give execution permission: `chmod +x ubuntu.sh`
9. Run the script: `./ubuntu.sh -y`
10. Now just start ubuntu: `./startubuntu.sh`

## or Copy lines of command into your termux
and it will automatically take care of everything

apt-get update && apt-get upgrade -y

apt-get install wget -y

apt-get install proot -y

apt-get install git -y

cd ~

git clone https://github.com/MFDGaming/ubuntu-in-termux.git

cd ubuntu-in-termux

chmod +x ubuntu.sh

 
./ubuntu.sh -y

./startubuntu.sh



### Todo
- [ ] **Fix installation problem for some devices**
