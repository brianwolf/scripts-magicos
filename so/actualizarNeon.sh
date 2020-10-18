# correr con sudo

sudo sed  -i 's/bionic/focal/g' /etc/apt/sources.list &\
sudo sed  -i 's/bionic/focal/g' /etc/apt/sources.list.d/neon.list &\
sudo apt update &\
sudo apt upgrade -y &\
sudo apt dist-upgrade --allow-downgrades &\
sudo apt autoremove
