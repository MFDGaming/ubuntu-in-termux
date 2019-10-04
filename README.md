# ubuntu-in-termux
[![DISCORD](https://img.shields.io/badge/Chat-On%20Discord-738BD7.svg?style=for-the-badge)](https://discord.gg/Vyecdkj)

## What's This?

This is a script by which you can install Ubuntu in your termux application without a rooted device

## Updates
**FULLY UPDATED TO UBUNTU 19.04 DISCO**

### Installation steps
1. Update termux: `apt-get update && apt-get upgrade -y`
2. Install wget: `apt-get install wget -y`
3. Install proot: `apt-get install proot -y`
4. Install git: `apt-get install git -y`
5. Go to HOME folder: `cd ~`
6. Download script: `git clone https://github.com/MFDGaming/ubuntu-in-termux.git`
7. Go to script folder: `cd ubuntu-in-termux`
8. Give execution permission: `chmod +x ubuntu.sh`
9. Run the script: `./ubuntu.sh`
10. Now just start ubuntu: `./start.sh`

### Todo
- [x] **Discord server**
- [ ] **Upgrade to ubuntu 19.10 when it is released**
- [x] **Add colors and reformat the text in the installer**
- [ ] **Fix installation problem for some devices**
- [ ] **Fix some text format bugs after the color update**
