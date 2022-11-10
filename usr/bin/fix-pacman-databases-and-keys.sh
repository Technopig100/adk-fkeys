#!/bin/bash
#set -e
###############################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###############################################################################
echo
tput setaf 1
echo "###############################################################################"
echo "####        Deleting and Refreshing Pacman Keyrings and Database           ####"
echo "###############################################################################"
tput sgr0
echo
sudo rm /var/lib/pacman/sync/*
echo "Removing /etc/pacman.d/gnupg files"
sudo rm -r /etc/pacman.d/gnupg/*
sudo pacman-key --init
sudo pacman-key --populate
sudo -- bash -c 'echo "keyserver hkp://keyserver.ubuntu.com:80" >> /etc/pacman.d/gnupg/gpg.conf'
sudo pacman -Syy
wait
echo
tput setaf 2
echo "###############################################################################"
echo "###                        Thank You and Good Bye!!                        ####"
echo "###############################################################################"
sleep 5