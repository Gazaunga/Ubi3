#!/bin/sh

while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
    do
    	sleep 1
    done &
exec i3
    
sh ~/.fehbg &

userresources=$HOME/.Xresources
#usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
#sysmodmap=/etc/X11/xinit/.Xmodmap

#Set the background color

#hsetroot -solid "#fdf6e3"		#light
#hsetroot -solid "#073642"		#dark
#hsetroot -solid "#3c3836"

# merge in defaults and keymaps

if [ -f $sysresources ]; then

    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi



#exec $desktopenvironment
