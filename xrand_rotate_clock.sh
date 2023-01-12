ori=('normal' 'right' 'inverted' 'left')
current=$(xrandr --query --verbose | grep 'eDP' | cut -d ' ' -f 5)
curori=$(( $(echo ${ori[@]} | tr ' ' '\n' | grep -n -m1 $current | cut -f1 -d:) % 4 ))
xrandr -o ${ori[$curori]}
