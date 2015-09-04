install-dependencies:
	sudo pacman -Sy chromium curl rxvt-unicode feh xorg-xinit

link-config:
	-ln -s $(shell pwd)/xinitrc /home/${USER}/.xinitrc
	-ln -s $(shell pwd)/bashrc /home/${USER}/.bashrc
	-sudo ln -s $(shell pwd)/20-thinkpad.conf /etc/X11/xorg.conf.d/
	@echo "Done"

unlink-config:
	rm /home/${USER}/.xinitrc
	rm /home/${USER}/.bashrc
	sudo rm /etc/X11/xorg.conf.d/20-thinkpad.conf
	@echo "Done"
