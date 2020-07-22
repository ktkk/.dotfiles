#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	echo "Starting window manager ..." &
	exec startx > /dev/null 2>&1 
fi
# Display Managers are bloat
