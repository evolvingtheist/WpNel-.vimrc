#!/bin/bash
#Script for setting up my vim programming environment.

#Check if dependencies are already installed and install if they are not
DEPENDENCIES="build-essential cmake python3-dev libclang1-8 llvm-8 golang"
for PKG in $DEPENDENCIES              
do
	INSTALLED="$(dpkg-query -s $PKG | grep Status | awk '{print $4}')"

	if [ $INSTALLED = installed ]; then
		echo "Dependency, $PKG is installed!"
	else
		echo "Dependency, $PKG not installed, installing now..."
		sudo apt install $PKG
	fi
done
printf "\nALL DEPENDENCIES ARE INSTALLED!\n"


#Installation of Vundle(Vim plugin manager)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#Run installation script for YouCompleteMe(AutoCompletion)
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer
