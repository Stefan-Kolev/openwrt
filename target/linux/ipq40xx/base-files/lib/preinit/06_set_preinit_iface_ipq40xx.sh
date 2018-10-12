#!/bin/sh

set_preinit_iface() {
	. /lib/functions.sh

	case $(board_name) in
	asus,rt-ac58u| \
	avm,fritzbox-4040| \
	comfast,cf-e370ac| \
	glinet,gl-b1300| \
	meraki,mr33| \
	zyxel,nbg6617)
		ifname=eth0
		;;
	*)
		;;
	esac
}

boot_hook_add preinit_main set_preinit_iface
