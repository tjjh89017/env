function fish_prompt
	~/.powerline-shell/powerline-shell.py $status --shell bare ^/dev/null
end

function __fish_cancel_commandline
	commandline ""
	commandline -f repaint
end
