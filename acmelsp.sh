#!/bin/sh

pkill acmego 
pkill acme-lsp
pkill L

PLAN9=/usr/local/plan9
PATH=$PATH:$PLAN9/bin

/home/matt/go/bin/acmego &
/home/matt/go/bin/acme-lsp -server '([/\\]go\.mod)|([/\\]go\.sum)|(\.go)$:gopls serve' -workspaces $1 &
/home/matt/go/bin/L assist &

