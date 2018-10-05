#!/bin/bash

#prepare MN for updating by stopping wagerrd
cd ~/wagerr-2.0.0/bin
./wagerr-cli stop
#download, unzip, and remove tar.gz for new new release
cd ..
cd ..
rm -r ~/wagerr-2.0.0
wget -q https://github.com/wagerr/wagerr/releases/download/v2.0.1/wagerr-2.0.1-x86_64-linux-gnu.tar.gz
tar -xvf wagerr-2.0.1-x86_64-linux-gnu.tar.gz
rm wagerr-2.0.1-x86_64-linux-gnu.tar.gz
#start wagerrd
cd ~/wagerr-2.0.1/bin
./wagerrd
./wagerr-cli masternode status
./wagerr-cli getinfo
echo -e "Your Wagerr Masternode has been successfully upgraded to version 2.0.1 Monte Carlo"
