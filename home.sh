#!/bin/bash
# home.sh
#
# Vlad Ionescu / vlad@vladionescu.com
#
# Automagically sets up my .bashrc and public key - feels just like being home!

# check if curl exists, if not, exit because I can't do anything
command -v curl >/dev/null 2>&1 || { echo >&2 "[Disaster] I can't build without my tools - curl is not installed. Aborting."; exit 1; }

# check for existing .bashrc, if found, backup
if [ -f ~/.bashrc ] ; then
	echo "[Construction Zone] .bashrc exists, backing up to .bashrc_old"
	mv ~/.bashrc ~/.bashrc_old
fi

# get new .bashrc
echo "[Construction Zone] Downloading your own .bashrc"
curl -s vladionescu.com/bashrc > ~/.bashrc

# does .ssh/authorized_keys exist?
if [ ! -f ~/.ssh/authorized_keys ] ; then
	# does .ssh exist?
	if [ ! -d ~/.ssh ] ; then
		echo "[Construction Zone] Measuring door (creating ~/.ssh/)"
		mkdir ~/.ssh
		chmod 700 ~/.ssh
	fi

	echo "[Construction Zone] Installing lock (creating ~/.ssh/authorized_keys)"
	touch ~/.ssh/authorized_keys
	chmod 600 ~/.ssh/authorized_keys
fi

# add your public key to authorized_keys
echo "[Construction Zone] Getting key for the front door"
curl -s vladionescu.com/key >> ~/.ssh/authorized_keys

# after that, reload .bashrc
echo "[Welcome Home] Reloading .bashrc"
cd ~
source .bashrc
cd - >/dev/null

# remove this script
rm $0;
