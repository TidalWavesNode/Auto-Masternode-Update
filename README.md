# AutoMNupdate
Automated Wagerr Masternode update scripts

# MasterNode update to 2.0.1 Usage - this does nothing but update to the latest version
wget -q https://raw.githubusercontent.com/TidalWavesNode/Auto-Masternode-Update/master/MNupdate.sh

bash MNupdate.sh

# Masternode update + Auto_restart setup - this will update to the latest version, create script file, and add a cronjob for more goto https://tidalwaves.info/auto-restart-masternode/

wget -q https://raw.githubusercontent.com/TidalWavesNode/Auto-Masternode-Update/master/MNUpdateWithAutoRestart

bash MNUpdateWithAutoRestart.sh

