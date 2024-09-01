#!/data/data/com.termux/files/usr/bin/bash
time1="$( date +"%r" )"
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m Select a version:\n"
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m 1. 14.04 LTS (Trusty Tahr)\n"
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m 2. 16.04.6 LTS (Xenial Xerus)\n"
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m 3. 18.04.5 LTS (Bionic Beaver)\n"
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m 4. 19.04 (Disco Dingo)\n"
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m 5. 20.04 LTS (Focal Fossa)\n"
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m 6. 22.04 LTS (Jammy Jellyfish)\n"
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m 7. 23.04 (Lunar Lobster)\n"
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m 8. 24.04.1 LTS - latest (Noble Numbat)\n"
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m 9. Custom version\n"
read -p "Enter the number corresponding to your choice: " version_choice

case $version_choice in
    1) 
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87mSelect version - 14.04.*\n"
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m1. 14.04\n"
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m2. 14.04.1\n"
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m3. 14.04.2\n"
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m4. 14.04.3\n"
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m5. 14.04.4\n"
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m6. 14.04.5\n"
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m7. 14.04.6\n"
        read -p "Enter the number corresponding to your choice: " sub_choice
        case $sub_choice in
            1) selected_var="14.04" ;;
            2) selected_var="14.04.1" ;;
            3) selected_var="14.04.2" ;;
            4) selected_var="14.04.3" ;;
            5) selected_var="14.04.4" ;;
            6) selected_var="14.04.5" ;;
            7) selected_var="14.04.6" ;;
            *) printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87mInvalid selection!" ;;
        esac
        ;;
    2) 
        selected_var="16.04.6"
        ;;
    3) 
        selected_var="18.04.5"
        ;;
    4)
        selected_var="19.04"
        ;;
    5) 
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87mSelect version - 20.04.*\n"
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m1. 20.04\n"
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m2. 20.04.1\n"
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m3. 20.04.2\n"
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m4. 20.04.3\n"
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m5. 20.04.4\n"
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m6. 20.04.5\n"
        read -p "Enter the number corresponding to your choice: " sub_choice
        case $sub_choice in
            1) selected_var="20.04" ;;
            2) selected_var="20.04.1" ;;
            3) selected_var="20.04.2" ;;
            4) selected_var="20.04.3" ;;
            5) selected_var="20.04.4" ;;
            6) selected_var="20.04.5" ;;
            *) printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87mInvalid selection!" ;;
        esac
        ;;

    6) 
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87mSelect version - 22.04.*\n"
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m1. 22.04\n"
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m2. 22.04.1\n"
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m3. 22.04.2\n"
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m4. 22.04.3\n"
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87m5. 22.04.4\n"
        read -p "Enter the number corresponding to your choice: " sub_choice
        case $sub_choice in
            1) selected_var="22.04" ;;
            2) selected_var="22.04.1" ;;
            3) selected_var="22.04.2" ;;
            4) selected_var="22.04.3" ;;
            5) selected_var="22.04.4" ;;
            *) printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87mInvalid selection!" ;;
        esac
        ;;
    
    7)
        selected_var="23.04"
        ;;
    8) 
        selected_var="24.04.1"
        ;;
    9)
        read -p "Enter the Download URL of the custom version: " custom_url
        ;;
    *)
        printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[INFO]:\e[0m \x1b[38;5;87mInvalid version selection!"
        exit 1
        ;;
esac

ARCHITECTURE=$(dpkg --print-architecture)
case "$ARCHITECTURE" in
aarch64) ARCHITECTURE=arm64;;
arm) ARCHITECTURE=armhf;;
amd64|x86_64) ARCHITECTURE=amd64;;
*)
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;203m[ERROR]:\e[0m \x1b[38;5;87m Unknown architecture :- $ARCHITECTURE"
exit 1
;;
esac

if [ -n "$custom_url" ]; then
    download_url="$custom_url"
else
    case $selected_var in
        19.04)
            download_url="https://old-releases.ubuntu.com/releases/ubuntu-base/releases/19.04/release/ubuntu-base-19.04-base-${ARCHITECTURE}.tar.gz"
            ;;
        23.04)
            download_url="https://old-releases.ubuntu.com/releases/lunar/ubuntu-23.04-netboot-amd64.tar.gz"
            ;;
        14.04|14.04.1|14.04.2|14.04.3|14.04.4)
            download_url="https://cdimage.ubuntu.com/ubuntu-base/releases/${selected_var}/release/ubuntu-base-${selected_var}-core-${ARCHITECTURE}.tar.gz"
            ;;
        14.04.5|14.04.6)
            download_url="https://cdimage.ubuntu.com/ubuntu-base/releases/${selected_var}/release/ubuntu-base-${selected_var}-base-${ARCHITECTURE}.tar.gz"
            ;;
        16.04.6)
            download_url="https://cdimage.ubuntu.com/ubuntu-base/releases/16.04/release/ubuntu-base-16.04.6-base-${ARCHITECTURE}.tar.gz"
            ;;
        18.04.5)
            download_url="https://cdimage.ubuntu.com/ubuntu-base/releases/18.04/release/ubuntu-base-18.04.5-base-${ARCHITECTURE}.tar.gz"
            ;;
        20.04|20.04.1|20.04.2|20.04.3|20.04.4|20.04.5)
            download_url="https://cdimage.ubuntu.com/ubuntu-base/releases/${selected_var}/release/ubuntu-base-${selected_var}-base-${ARCHITECTURE}.tar.gz"
            ;;
        22.04|22.04.1|22.04.2|22.04.3|22.04.4)
            download_url="https://cdimage.ubuntu.com/ubuntu-base/releases/${selected_var}/release/ubuntu-base-${selected_var}-base-${ARCHITECTURE}.tar.gz"
            ;;
        24.04.1)
            download_url="https://cdimage.ubuntu.com/ubuntu-base/releases/${selected_var}/release/ubuntu-base-${selected_var}-base-${ARCHITECTURE}.tar.gz"
            ;;
     esac
fi
 

install1 () {
directory=ubuntu-fs
if [ -d "$directory" ];then
first=1
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;227m[WARNING]:\e[0m \x1b[38;5;87m Skipping the download and the extraction\n"
elif [ -z "$(command -v proot)" ];then
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;203m[ERROR]:\e[0m \x1b[38;5;87m Please install proot.\n"
printf "\e[0m"
exit 1
elif [ -z "$(command -v wget)" ];then
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;203m[ERROR]:\e[0m \x1b[38;5;87m Please install wget.\n"
printf "\e[0m"
exit 1
fi
if [ "$first" != 1 ];then
if [ -f "ubuntu.tar.gz" ];then
rm -rf ubuntu.tar.gz
fi
if [ ! -f "ubuntu.tar.gz" ];then
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[Installer thread/INFO]:\e[0m \x1b[38;5;87m Downloading the ubuntu rootfs, please wait...\n"

wget --progress=bar:force $download_url -O ubuntu.tar.gz
if [ $? -eq 0 ]; then
    printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[Installer thread/INFO]:\e[0m \x1b[38;5;87m Download complete!\n"
else
    printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;203m[ERROR]:\e[0m \x1b[38;5;87m Download Failed!\n"
    printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;203m[ERROR]:\e[0m \x1b[38;5;87m Please check your internet connection and try again.\n"
    printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;203m[ERROR]:\e[0m \x1b[38;5;87m If you have selected custom version, please check url you had provided.\n"
    printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;203m[ERROR]:\e[0m \x1b[38;5;87m If the issue persists, please report it at https://github.com/TISnoob/ubuntu-in-termux/issues"
    exit 1
fi

fi

cur=`pwd`
mkdir -p $directory
cd $directory
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[Installer thread/INFO]:\e[0m \x1b[38;5;87m Decompressing the ubuntu rootfs, please wait...\n"
proot --link2symlink tar -zxf $cur/ubuntu.tar.gz --exclude='dev'||:
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[Installer thread/INFO]:\e[0m \x1b[38;5;87m The ubuntu rootfs have been successfully decompressed!\n"
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[Installer thread/INFO]:\e[0m \x1b[38;5;87m Fixing the resolv.conf, so that you have access to the internet\n"
printf "nameserver 8.8.8.8\nnameserver 8.8.4.4\n" > etc/resolv.conf
stubs=()
stubs+=('usr/bin/groups')
for f in ${stubs[@]};do
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[Installer thread/INFO]:\e[0m \x1b[38;5;87m Writing stubs, please wait...\n"
echo -e "#!/bin/sh\nexit" > "$f"
done
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[Installer thread/INFO]:\e[0m \x1b[38;5;87m Successfully wrote stubs!\n"
cd $cur

fi

mkdir -p ubuntu-binds
bin=startubuntu.sh
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[Installer thread/INFO]:\e[0m \x1b[38;5;87m Creating the start script, please wait...\n"
cat > $bin <<- EOM
#!/bin/bash
cd \$(dirname \$0)
## unset LD_PRELOAD in case termux-exec is installed
unset LD_PRELOAD
command="proot"
## uncomment following line if you are having FATAL: kernel too old message.
#command+=" -k 4.14.81"
command+=" --link2symlink"
command+=" -0"
command+=" -r $directory"
if [ -n "\$(ls -A ubuntu-binds)" ]; then
    for f in ubuntu-binds/* ;do
      . \$f
    done
fi
command+=" -b /dev"
command+=" -b /proc"
command+=" -b /sys"
command+=" -b ubuntu-fs/tmp:/dev/shm"
command+=" -b /data/data/com.termux"
command+=" -b /:/host-rootfs"
command+=" -b /sdcard"
command+=" -b /storage"
command+=" -b /mnt"
command+=" -w /root"
command+=" /usr/bin/env -i"
command+=" HOME=/root"
command+=" PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games"
command+=" TERM=\$TERM"
command+=" LANG=C.UTF-8"
command+=" /bin/bash --login"
com="\$@"
if [ -z "\$1" ];then
    exec \$command
else
    \$command -c "\$com"
fi
EOM
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[Installer thread/INFO]:\e[0m \x1b[38;5;87m The start script has been successfully created!\n"
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[Installer thread/INFO]:\e[0m \x1b[38;5;87m Fixing shebang of startubuntu.sh, please wait...\n"
termux-fix-shebang $bin
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[Installer thread/INFO]:\e[0m \x1b[38;5;87m Successfully fixed shebang of startubuntu.sh! \n"
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[Installer thread/INFO]:\e[0m \x1b[38;5;87m Making startubuntu.sh executable please wait...\n"
chmod +x $bin
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[Installer thread/INFO]:\e[0m \x1b[38;5;87m Successfully made startubuntu.sh executable\n"
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[Installer thread/INFO]:\e[0m \x1b[38;5;87m Cleaning up please wait...\n"
rm ubuntu.tar.gz -rf
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[Installer thread/INFO]:\e[0m \x1b[38;5;87m Successfully cleaned up!\n"
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;83m[Installer thread/INFO]:\e[0m \x1b[38;5;87m The installation has been completed! You can now launch Ubuntu with ./startubuntu.sh\n"
printf "\e[0m"

}
if [ "$1" = "-y" ];then
install1
elif [ "$1" = "" ];then
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;127m[QUESTION]:\e[0m \x1b[38;5;87m Do you want to install ubuntu-in-termux? [Y/n] "

read cmd1
if [ "$cmd1" = "y" ];then
install1
elif [ "$cmd1" = "Y" ];then
install1
else
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;203m[ERROR]:\e[0m \x1b[38;5;87m Installation aborted.\n"
printf "\e[0m"
exit
fi
else
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;203m[ERROR]:\e[0m \x1b[38;5;87m Installation aborted.\n"
printf "\e[0m"
fi
