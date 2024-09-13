set -x LANG en_US.UTF-8
set -x POWERLINE_PATH $HOME/.vim/bundle/powerline

# homebrew path
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

# override python
#set PYTHON $(brew info python --json | jq -r .[0].name)
#set PYTHON_PATH $(brew --prefix)/opt/$PYTHON/libexec/bin
#fish_add_path -pP $PYTHON_PATH

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_prompt
	eval /opt/homebrew/bin/powerline-go -error $status -jobs (count (jobs -p))
end

#function __fish_cancel_commandline
#	commandline ""
#	commandline -f repaint
#end
