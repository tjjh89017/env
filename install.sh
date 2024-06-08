#!/bin/bash

#install powerline-shell for fish
function install_powerline(){
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
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

# install some sofeware indeed
# Todo: use list in file to do that better
function install_brew_software(){
	echo 'Installing software'
	brew install wget git fish
	brew install vim
	brew install python3
}

# install some global vairable
function install_fish_variable(){
	fish -c 'set -g LANG en_US.UTF-8'
}

function disable_ds_store(){
	defaults write com.apple.desktopservices DSDontWriteNetworkStores true
	defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
}

install_Homebrew
install_brew_software
install_vimrc
install_Vundle.vim
