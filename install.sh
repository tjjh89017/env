#!/bin/bash

#install powerline-shell for fish
function install_powerline(){
	echo Installing powerline-shell to "$HOME"/.powerline-shell/
	git clone https://github.com/milkbikis/powerline-shell "$HOME"/.powerline-shell
	"$HOME"/.powerline-shell/install.py

	echo Config fish config.fish
	cp ./config.fish "$HOME"/.config/fish/
}

# install vimrc
function install_vimrc(){
	echo Installing vimrc to "$HOME"/.vimrc
	cp ./vimrc "$HOME"/.vimrc
}

# install Vundle.vim
function install_Vundle.vim(){
	echo Installing Vundle.vim to "$HOME"/.vim/bundle/Vundle.vim
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
}

# install Homebrew and some software indeed
function install_Homebrew(){
	echo 'Installing HomeBrew'
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

# install some sofeware indeed
# Todo: use list in file to do that better
function install_brew_software(){
	echo 'Installing software'
	brew install wget git fish
	brew install vim --with-override-system-vi
	brew install python
	brew install python3
}

install_Homebrew
install_brew_software
install_vimrc
install_Vundle.vim
