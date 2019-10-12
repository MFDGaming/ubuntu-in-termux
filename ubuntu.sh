#!/data/data/com.termux/files/usr/bin/bash
folder=ubuntu-fs
if [ -d "$folder" ]; then
    first=1
    printf '\e[38;5;196m Skipping the download\n'
fi
if [ "$first" != 1 ];then
    if [ ! -f "ubuntu.tar.gz" ]; then
        printf '\e[38;5;220m Downloading the ubuntu rootfs...\n'
        if [ "$(dpkg --print-architecture)" = "aarch64" ];then
            wget http://cdimage.ubuntu.com/ubuntu-base/releases/14.04.5/release/ubuntu-base-14.04.5-base-arm64.tar.gz -O ubuntu.tar.gz -q
        elif [ "$(dpkg --print-architecture)" = "arm" ];then
            wget http://cdimage.ubuntu.com/ubuntu-base/releases/14.04.5/release/ubuntu-base-14.04.5-base-armhf.tar.gz -O ubuntu.tar.gz -q
        elif [ "$(dpkg --print-architecture)" = "x86_64" ];then
            wget http://cdimage.ubuntu.com/ubuntu-base/releases/14.04.5/release/ubuntu-base-14.04.5-base-amd64.tar.gz -O ubuntu.tar.gz -q
        elif [ "$(dpkg --print-architecture)" = "x86" ];then
            wget http://cdimage.ubuntu.com/ubuntu-base/releases/14.04.5/release/ubuntu-base-14.05-base-i386.tar.gz -O ubuntu.tar.gz -q
        elif [ "$(dpkg --print-architecture)" = "amd64" ];then
            wget http://cdimage.ubuntu.com/ubuntu-base/releases/14.04.5/release/ubuntu-base-14.04.5-base-amd64.tar.gz -O ubuntu.tar.gz -q
        elif [ "$(dpkg --print-architecture)" = "i686" ];then
            wget http://cdimage.ubuntu.com/ubuntu-base/releases/14.04.5/release/ubuntu-base-14.04.5-base-i386.tar.gz -O ubuntu.tar.gz -q
        elif [ "$(dpkg --print-architecture)" = "i386" ];then
            wget http://cdimage.ubuntu.com/ubuntu-base/releases/14.04.5/release/ubuntu-base-14.04.5-base-i386.tar.gz -O ubuntu.tar.gz -q
        elif [ "$(dpkg --print-architecture)" = "i586" ];then
            wget http://cdimage.ubuntu.com/ubuntu-base/releases/14.04.5/release/ubuntu-base-14.04.5-base-i386.tar.gz -O ubuntu.tar.gz -q



        else
            printf '\e[38;5;196m unknown architecture\n'
            exit 1
        fi
    fi
    cur=`pwd`
    mkdir -p $folder
    cd $folder
    printf '\e[38;5;112m Download complete!\n'
    printf '\e[38;5;220m Decompressing the ubuntu rootfs...\n'
    proot --link2symlink tar -xf $cur/ubuntu.tar.gz --exclude='dev'||:
    printf '\e[38;5;112m The ubuntu rootfs have been successfully decompressed!\n'
    printf '\e[38;5;220m Fixing the resolv.conf, so that you have access to the internet\n'
    printf 'nameserver 8.8.8.8\nnameserver 8.8.4.4\n' > etc/resolv.conf
    stubs=()
    stubs+=('usr/bin/groups')
    
    for f in ${stubs[@]};do
        printf '\e[38;5;220m Writing stub: $f\n'
        echo -e "#!/bin/sh\nexit" > "$f"
    done



    cd $cur
fi
mkdir -p ubuntu-binds
bin=start.sh
printf '\e[38;5;220m Creating the start script...\n'
cat > $bin <<- EOM
#!/bin/bash
cd \$(dirname \$0)
## unset LD_PRELOAD in case termux-exec is installed
unset LD_PRELOAD
command="proot"
command+=" --link2symlink"
command+=" -0"
command+=" -r $folder"
if [ -n "\$(ls -A ubuntu-binds)" ]; then
    for f in ubuntu-binds/* ;do
      . \$f
    done
fi
command+=" -b /dev"
command+=" -b /proc"
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

printf '\e[38;5;112m The start script has been successfully created!\n'
printf '\e[38;5;220m Fixing shebang of $bin\n'
termux-fix-shebang $bin
printf '\e[38;5;220m Making $bin executable\n'
chmod +x $bin
printf '\e[38;5;220m Cleaning up\n'
rm ubuntu.tar.gz -rf
printf '\e[38;5;112m The installation has been completed! You can now launch Ubuntu with the ./start.sh script\n'
printf '\e[0m'

