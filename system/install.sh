#!/bin/bash
cd ~

# Install Patiobar
git clone https://github.com/kylejohnson/Patiobar.git
cd Patiobar
bash install.sh

cd ~
mkdir -p bin
echo "export PATH=\"$HOME/bin:$PATH\"" >> .bashrc
source .bashrc

cp /boot/PiBakery/patiobar_install/bin/* ~/bin/
chmod u+x ~/bin/pbstart
chmod u+x ~/bin/pbstop

# Configure Pianobar
cp /boot/PiBakery/patiobar_install/config ~/.config/pianobar/config
#cp /boot/PiBakery/patiobar_install/PASSWORD.gpg ~/PASSWORD