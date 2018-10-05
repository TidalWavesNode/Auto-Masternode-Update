#!/bin/bash

#prepare MN for updating by stopping wagerrd and removing wagerr-2.0.0
cd ~/wagerr-2.0.0/bin
./wagerr-cli stop
cd ~
rm -r ~/wagerr-2.0.0

#download, unzip, and remove tar.gz for new new release
wget -q https://github.com/wagerr/wagerr/releases/download/v2.0.1/wagerr-2.0.1-x86_64-linux-gnu.tar.gz
tar -xvf wagerr-2.0.1-x86_64-linux-gnu.tar.gz
rm wagerr-2.0.1-x86_64-linux-gnu.tar.gz

#start wagerrd
cd ~/wagerr-2.0.1/bin
./wagerrd
echo -e "Your Wagerr Masternode has been successfully upgraded to version 2.0.1 Monte Carlo"
