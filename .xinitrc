# xrandr
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

# Start picom
picom &

# Restore wallpaper
~/.fehbg &

# Run slstatus
slstatus &

# Run flameshot
flameshot &

# Run dunst
dunst &

# Run DWM
exec dwm
