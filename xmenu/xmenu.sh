#!/bin/sh

PLAN9=/usr/local/plan9
PATH=$PATH:$HOME/go/bin:$PLAN9/bin

xmenu -i <<EOF | sh &
Acme		
	Acme		acme -a -f /mnt/font/GoMono/11a/font
	Acme (Restore)	acme -a -f /mnt/font/GoMono/11a/font -l /home/matt/acme.dump
Firefox		firefox
LXAppearance	lxappearance
PCManFM		pcmanfm
st		st
xterm		xterm

Screenshot	scrot -d 2 -F "/home/matt/Pictures/%Y-%m-%d-%H%M%S_scrot.png"
Volume		st -c Volume -e cmixer -g 80x40
EOF
