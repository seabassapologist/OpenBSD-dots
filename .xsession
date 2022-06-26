export ENV=$HOME/.kshrc
export XDG_RUNTIME_DIR=/tmp/xdg-runtime-dir

compton --vsync drm &
hsetroot -solid "#777777" &
xrdb -merge ~/.Xresources
xsetroot -cursor_name left_ptr &
redshift &

export PLAN9=/usr/local/plan9
export PATH=$PATH:$PLAN9/bin
9 fontsrv &

exec dbus-launch /usr/local/bin/leftwm
