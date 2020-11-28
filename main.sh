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
