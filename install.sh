#!/bin/bash
# this scrip is for install libreries and utils for raspberrt pi and configure.
#Update repositori
sudo apt-get update
#install libreries for sound devices
sudo apt-get install -y libasound2-dev autoconf libtool bison swig libpulse-dev python-dev python-pyaudio screen mc
# Install Sphinxbase
echo "Download and install SphinxBase"
git clone git://github.com/cmusphinx/sphinxbase.git
cd sphinxbase
git checkout 3b34d87
./autogen.sh
make
sudo make install
cd ..
#install PocketSphinx
echo "Download and install PocketSphinx"
git clone git://github.com/cmusphinx/pocketsphinx.git
cd pocketsphinx
git checkout 4e4e607
./autogen.sh
make
sudo make install
cd ..
#Up date system libreries
echo "Up date system libreries"
sudo ldconfig
echo "END SCRIPT"
