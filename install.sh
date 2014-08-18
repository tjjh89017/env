#!/bin/bash

#install powerline-shell for fish
function install_powerline(){
	echo Installing powerline-shell to "$HOME"/.powerline-shell/
	exec git clone https://github.com/milkbikis/powerline-shell "$HOME"/.powerline-shell
	exec "$HOME"/.powerline-shell/install.py

	echo Config fish config.fish
	exec mv ./config.fish "$HOME"/.config/fish/
}

# install vimrc
function install_vimrc(){
	echo Installing vimrc to "$HOME"/.vimrc
}
