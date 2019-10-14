My personal .vimrc is setup mainly for Python, C, and Go

I use the following projects in my .vimrc:
[Vundle](https://github.com/VundleVim/Vundle.vim)
[YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)
[vim-go](https://github.com/fatih/vim-go)
[SimplyFold](https://github.com/tmhedberg/SimpylFold)

The following dependencies are required:
* build-essential
* cmake
* python3-dev
* libclang	
* golang

If you would like to use my .vimrc file exactly as it is, follow these steps or run my included installation script. The installation script is currently only for debian based distros. I will expand it in the future sometime when I have time to include installation for Arch and RHEL based distros.

1. Install all dependencies if needed.

2. Set up Vundle:
* git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

4. Run installation script for YouCompleteMe
* cd ~/.vim/bundle/YouCompleteMe
* python3 install.py --clang-compiler 

3. Open Vim and run :PluginInstall

4. Inside vim run :GoInstalBinaries


