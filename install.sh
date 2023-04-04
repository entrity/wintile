set -eux
if [[ -e ~/.local/share/gnome-shell/extensions/wintile@nowsci.com ]]; then
	rm -rf ~/.local/share/gnome-shell/extensions/wintile@nowsci.com
fi
cp -r . ~/.local/share/gnome-shell/extensions/wintile@nowsci.com
killall -SIGQUIT gnome-shell
gnome-extensions disable wintile@nowsci.com
gnome-extensions enable wintile@nowsci.com
