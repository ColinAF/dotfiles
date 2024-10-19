# Set the resolution 
# xrandr --output "Virtual-1" --mode 1920x1080 &
# xrandr --output "eDP-1" --mode 1920x1080

# Transparency manager
picom &

# Set the desktop background 
feh --bg-fill ~/Downloads/mountian.jpg

# Run the window manager 
exec dwm

# Remap caps to escape
setxkbmap -option caps:swapescape
