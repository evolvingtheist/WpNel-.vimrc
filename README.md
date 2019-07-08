My personal .vimrc is setup mainly for Python, C, and Go

I use the following projects in my .vimrc:
	https://github.com/VundleVim/Vundle.vim
	https://github.com/ycm-core/YouCompleteMe
	https://github.com/fatih/vim-go
	https://github.com/tmhedberg/SimpylFold

The following dependencies are required:
	build-essential
	cmake
	python3-dev
	libclang	
	golang

If you would like to use my .vimrc file exactly as it is, follow these steps:

1. Install all dependencies if needed.

2. set up Vundle:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

3. open Vim and run :PluginInstall

4. inside vim run :GoInstalBinaries

5. go to the .vim/plugin/YouCompleteMe directory
   run ./install.py --clang-completer

