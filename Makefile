
install:
	install -m 755 raspi-headless-player /usr/local/bin
	#install -m 644 udev.d/50-notify-block.rules /etc/udev/rules.d

uninstall:
	rm -f /usr/local/bin/raspi-headless-player
	#rm -f /etc/udev/rules.d/50-notify-block.rules
