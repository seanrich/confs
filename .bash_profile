if [ -f "~/.bashrc" ]; then
	. ~/.bashrc
fi
# if $STY is not set...
if [ -z "$STY" ]; then
	exec screen -UrARD
fi
