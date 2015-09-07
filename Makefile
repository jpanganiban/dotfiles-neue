install-dependencies:
	sudo pacman -Sy chromium curl rxvt-unicode feh xorg-xinit

link-config:
	-ln -s $(shell pwd)/bin ${HOME}/bin
	-ln -s $(shell pwd)/xinitrc ${HOME}/.xinitrc
	-ln -s $(shell pwd)/bashrc ${HOME}/.bashrc
	-sudo ln -s $(shell pwd)/20-thinkpad.conf /etc/X11/xorg.conf.d/
	-ln -s $(shell pwd)/xresources ${HOME}/.Xresources
	-ln -s $(shell pwd)/tmux.conf ${HOME}/.tmux.conf
	-ln -s $(shell pwd)/conkyrc ${HOME}/.conkyrc
	-ln -s $(shell pwd)/vim ${HOME}/.vim
	@echo "Done"

unlink-config:
	rm ${HOME}/.xinitrc
	rm ${HOME}/.bashrc
	sudo rm /etc/X11/xorg.conf.d/20-thinkpad.conf
	rm ${HOME}/.Xresources
	rm ${HOME}/bin
	rm ${HOME}/.tmux.conf
	rm ${HOME}/.conkyrc
	rm ${HOME}/.vim
	@echo "Done"

setup:
	-make unlink-config
	-make link-config
