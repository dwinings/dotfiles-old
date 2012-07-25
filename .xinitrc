#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
# The following variable defines the session which is started if the user doesn't explicitly select a session
# Source: http://svn.berlios.de/svnroot/repos/slim/trunk/xinitrc.sample
export GDK_NATIVE_WINDOWS=1
DEFAULT_SESSION=xmonad

case $1 in
fluxbox)
	exec startfluxbox
	;;
gnome)
	exec ck-launch-session gnome-session
	;;
xfce4)
	exec startxfce4
	;;
xmonad)
	xsetroot -cursor_name left_ptr
	trayer --edge top --align right --alpha 0 --transparent true --width 11 --height 11 --tint 0 &
	parcellite &
	feh --bg-fill /home/wisp/Wallpapers/Vaporeon.jpg
  pulseaudio --start
	exec  xmonad
	;;

compiz)
	/usr/local/bin/startcompiz.sh
	;;
kde4)
	exec startkde
	;;
*)
  xsetroot -cursor_name left_ptr
	trayer --edge top --align right --alpha 0 --transparent true --width 11 --height 11 --tint 0 &
	parcellite &
	feh --bg-fill /home/wisp/Wallpapers/Vaporeon.jpg
  pulseaudio --start
	exec  xmonad
	;;
esac
