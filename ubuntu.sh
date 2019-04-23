#!/data/data/com.termux/files/usr/bin/bash
folder=ubuntu-fs
if [ -d "$folder" ]; then
    first=1
    echo "skipping downloading"
fi
if [ "$first" != 1 ];then
    if [ ! -f "ubuntu.tar.gz" ]; then
        echo "downloading ubuntu-image"
        if [ "$(dpkg --print-architecture)" = "aarch64" ];then
            wget http://cdimage.ubuntu.com/ubuntu-base/daily/current/eoan-base-amd64.tar.gz -O ubuntu.tar.gz
        elif [ "$(dpkg --print-architecture)" = "arm" ];then
            wget http://cdimage.ubuntu.com/ubuntu-base/daily/current/eoan-base-armhf.tar.gz -O ubuntu.tar.gz
        elif [ "$(dpkg --print-architecture)" = "x86_64" ];then
            wget http://cdimage.ubuntu.com/ubuntu-base/daily/current/eoan-base-amd64.tar.gz -O ubuntu.tar.gz
        elif [ "$(dpkg --print-architecture)" = "i*86" ];then
            wget http://cdimage.ubuntu.com/ubuntu-base/daily/current/eoan-base-i386.tar.gz -O ubuntu.tar.gz
        elif [ "$(dpkg --print-architecture)" = "x86" ];then
            wget http://cdimage.ubuntu.com/ubuntu-base/daily/current/eoan-base-i386.tar.gz -O ubuntu.tar.gz
        elif [ "$(dpkg --print-architecture)" = "amd64" ];then
            wget http://cdimage.ubuntu.com/ubuntu-base/daily/current/eoan-base-amd64.tar.gz -O ubuntu.tar.gz



        else
            echo "unknown architecture"
            exit 1
        fi
    fi
    cur=`pwd`
    mkdir -p $folder
    cd $folder
    echo "decompressing ubuntu image"
    proot --link2symlink tar -xf $cur/ubuntu.tar.gz --exclude='dev'||:
    echo "fixing nameserver, otherwise it can't connect to the internet"
    echo "nameserver 8.8.8.8" > etc/resolv.conf
    stubs=()
    stubs+=('usr/bin/groups')
    
    for f in ${stubs[@]};do
        echo "Writing stub: $f"
        echo -e "#!/bin/sh\nexit" > "$f"
    done



    cd $cur
fi
mkdir -p ubuntu-binds
bin=start.sh
echo "writing launch script"
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
command+=" -b /:host-rootfs"
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

echo "fixing shebang of $bin"
termux-fix-shebang $bin
echo "making $bin executable"
chmod +x $bin
echo "removing image for some space"
rm ubuntu.tar.gz -rf
echo "You can now launch Ubuntu with the ./start.sh script"

