rm -f /tmp/xrandr.txt
xrandr > /tmp/xrandr.txt
if grep -q "3000x2000_60.00  60.00" /tmp/xrandr.txt; then
  rm -f /tmp/xrandr.txt
  return
else
  xrandr --newmode "3000x2000_60.00"  513.44  3000 3240 3568 4136  2000 2001 2004 2069  -HSync +Vsync
  xrandr --addmode eDP-1 "3000x2000_60.00"
fi
rm -f /tmp/xrandr.txt
return
