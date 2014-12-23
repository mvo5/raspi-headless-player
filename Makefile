
install:
	install -m 755 raspi-headless-player.py /usr/local/bin
	install -m 644 detect.py /usr/local/bin
	install -m 644 udev.d/50-notify-block.rules /etc/udev/rules.d

