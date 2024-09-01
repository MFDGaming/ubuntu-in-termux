# ubuntu-in-termux (Advanced)


## What's This?

This is a script that allows you to install Ubuntu in your termux application without a rooted device

## Updates

**• Added more version**

## Limitations 

**This script downloads file from Ubuntu's file server via some fixed urls. They can fail if the addresses are changed or if the files were removed. Consider changing version if the download fails persistently.**


## Important

**• If you have to use ubuntu in termux with a x86/i\*86 architecture or prefer ubuntu 19.10 you can use this branch -> https://github.com/MFDGaming/ubuntu-in-termux/tree/ubuntu19.10**

**• If you get an error message that says "Fatal Kernel too old" you have to uncomment the line that reads "command+=" -k 4.14.81"" (remove the # that is located in front of the line) in the "startubuntu.sh" file**

### Installation steps

1. Update termux: `apt-get update && apt-get upgrade -y`
2. Install wget, proot and git: `apt-get install wget proot git -y`
3. Go to HOME folder: `cd ~`
4. Download script: `git clone https://github.com/TISnoob/ubuntu-in-termux.git`
5. Go to script folder: `cd ubuntu-in-termux`
6. Give execution permission: `chmod +x ubuntu.sh`
7. Run the script: `./ubuntu.sh`
8. Configure installation.
9. Now just start ubuntu: `./startubuntu.sh`
