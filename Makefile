
install:
	install -m 0755 raspi-headless-player /usr/local/bin
	#install -m 644 udev.d/50-notify-block.rules /etc/udev/rules.d
	install -m 0755 -d /usr/share/raspi-headless-player/audio/de
	install -D ./audio/de/*  /usr/share/raspi-headless-player/audio/de

uninstall:
	rm -f /usr/local/bin/raspi-headless-player
	#rm -f /etc/udev/rules.d/50-notify-block.rules
