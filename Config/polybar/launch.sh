#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch

## Left bar
## Barra de Kali Linux Purple
polybar log -c ~/.config/polybar/current.ini &
## Barra de la fecha -- Modificamos para quitarla
#polybar secondary -c ~/.config/polybar/current.ini &
## Barra Ethernet Status
polybar terciary -c ~/.config/polybar/current.ini &
## Barra HTB Status
polybar quaternary -c ~/.config/polybar/current.ini &
## Barra HTB Target
polybar quinary -c ~/.config/polybar/current.ini &

## Right bar
## Barra Wi-Fi, Sonido -- Modificamos para quitarla
#polybar top -c ~/.config/polybar/current.ini &
## Barra del Systema (Logout, Restart, Shutdown)
polybar primary -c ~/.config/polybar/current.ini &

## Center bar
## Barra Central
polybar primary -c ~/.config/polybar/workspace.ini &
