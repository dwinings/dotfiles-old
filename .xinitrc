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
  /home/wisp/.scripts/init_xmonad.sh &
  exec xmonad
  ;;

compiz)
  /usr/local/bin/startcompiz.sh
  ;;
kde4)
  exec startkde
  ;;
*)
  /home/wisp/.scripts/init_xmonad.sh &
  exec xmonad
  ;;
esac
