#!/data/data/com.termux/files/usr/bin/bash
folder=ubuntu-fs
VERSION="19.04"
if [ -d "$folder" ]; then
    first=1
    echo "skipping downloading"
elif [ -z "$(command -v proot)" ]; then
    echo "Install proot and execute"
    exit 1
fi
if [ "$first" != 1 ];then
    if [ ! -f "ubuntu.tar.gz" ]; then
        echo "downloading ubuntu-image"
        ARCH="$(dpkg --print-architecture)"
        case "$ARCH" in
            aarch64) ARCH=arm64;;
            amd64|x86_64) ARCH=amd64;;
            arm) ARCH=armhf;;
            x86|i*86) ARCH=i386;;
            *)
                echo "unknown architecture :- $ARCH"
                exit 1
                ;;
        esac
        if [ -z "$(command -v wget)" ]; then
            echo "Install wget and execute"
            exit 1
        fi
        wget http://cdimage.ubuntu.com/ubuntu-base/releases/${VERSION}/release/ubuntu-base-${VERSION}-base-${ARCH}.tar.gz -O ubuntu.tar.gz
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

echo "fixing shebang of $bin"
termux-fix-shebang $bin
echo "making $bin executable"
chmod +x $bin
echo "removing image for some space"
rm ubuntu.tar.gz -rf
echo "You can now launch Ubuntu with the ./start.sh script"
