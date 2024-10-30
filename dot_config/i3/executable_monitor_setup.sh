#!/usr/bin/env sh

# Check if DP-1 is connected
if xrandr | grep -q "^DP-1 connected"; then
    # Run your xrandr command
    xrandr --output eDP-1 --off \
        --output HDMI-1 --off \
        --output DP-1 --mode 3840x2160 --pos 0x0 --rotate normal \
        --output DP-2 --off
fi
