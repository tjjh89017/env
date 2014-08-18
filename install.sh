#!/bin/bash

#install powerline-shell for fish
function install_powerline(){
	echo Installing powerline-shell to "$HOME"/.powerline-shell/
	git clone https://github.com/milkbikis/powerline-shell "$HOME"/.powerline-shell
	"$HOME"/.powerline-shell/install.py

	echo Config fish config.fish
	mv ./config.fish "$HOME"/.config/fish/
}

# install vimrc
function install_vimrc(){
	echo Installing vimrc to "$HOME"/.vimrc
	mv ./vimrc "$HOME"/.vimrc
}

# install Vundle.vim
function install_Vundle.vim(){
	echo Installing Vundle.vim to "$HOME"/.vim/bundle/Vundel.vim
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
}

# install Homebrew and some software indeed
function install_Homebrew(){
	echo 'Installing HomeBrew'
	ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
}

# install some sofeware indeed
# Todo: use list in file to do that better
function install_brew_software(){
	echo 'Installing software'
	brew install wget git fish
}
