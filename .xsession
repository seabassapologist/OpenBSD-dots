export ENV=$HOME/.kshrc

/home/matt/Code/lemonbar/status.sh | /home/matt/Code/lemonbar/lemonbar.sh &
compton --vsync drm &
hsetroot -solid "#777777" &
xrdb -merge ~/.Xresources
xsetroot -cursor_name left_ptr &

export PLAN9=/usr/local/plan9
export PATH=$PATH:$PLAN9/bin
9 fontsrv &

exec 2bwm
