# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

#Arrancar de una Sway
[ "$(tty)" = "/dev/tty1" ] && XDG_CURRENT_DESKTOP=Hyprland dbus-run-session Hyprland
