.PHONY: all home patches system portage system

all: home patches portage system

home:
	stow -R -t $(HOME) home

patches:
	rsync -vcrtPi --delete --chmod=F644,D755 patches/ /etc/portage/patches

portage:
	rsync -vcrtPi --force --chmod=F644 portage/ /etc/portage/

system:
	install -m 0600 system/doas.conf /etc/doas.conf
	install -m 0644 system/fstab     /etc/fstab
	install -m 0644 system/rc.conf   /etc/rc.conf
	install -m 0644 system/kernel.config /usr/src/linux/.config
