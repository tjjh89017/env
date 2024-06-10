set -x LANG en_US.UTF-8
set -x POWERLINE_PATH $HOME/.vim/bundle/powerline

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_prompt
	eval /opt/homebrew/bin/powerline-go -error $status -jobs (count (jobs -p))
end

function __fish_cancel_commandline
	commandline ""
	commandline -f repaint
end
