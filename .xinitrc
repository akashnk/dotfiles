#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
$HOME/.monicarc   #monitor calibration

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
   [ -x "$f" ] && . "$f"
  done
 unset f
fi

setxkbmap -option terminate:ctrl_alt_bksp
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
source /etc/X11/xinit/xinitrc.d/*
#export GTK2_RC_FILES="$HOME/.gtkrc-2.0"


# Here openbox is kept as default
session=${1:-xfce}


case $session in
    mate                  ) mate-session;;
    gnome                 ) exec gnome-session;;
    waygnome              ) exec gnome-session --session=gnome-wayland;;
    metacity              ) xfce4-panel & cmst & xfce4-power-manager & volumeicon & metacity --composite;;
    gnome2                ) exec env GNOME_SHELL_SESSION_MODE=classic gnome-session --session gnome-classic;;
    openbox               ) exec openbox-session;;
    kde                   ) exec startkde;;   
    lxde                  ) exec startlxde;;
    ratpoison             ) exec ratpoison;;
    fluxbox               ) exec startfluxbox;;
    mate                  ) exec mate-session;;
    i3                    ) sh ~/.fehbg & exec i3;;
   # xfce                  ) exec xfce4-power-manager & startxfce4;;
    xfce                  ) exec startxfce4;;
    kodi                  ) exec kodi;;
    chromium              ) exec chromium;;
    smplayer              ) exec smplayer;;
   # compiz                ) xmodmap $HOME/.Xmodmap & xfce4-panel & pcmanfm --desktop & connman-ui-gtk & trayfreq & pnmixer & exec compiz ccp;;
    compiz                ) xfce4-panel & pcmanfm --desktop & nm-applet & volumeicon & redshift-gtk & exec compiz ccp;;
    # No known session, try to run it as command
    *) exec $1;;
esac
