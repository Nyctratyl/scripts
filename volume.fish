set -l mute (amixer -D pulse get Master | tail -n 1 | grep -o "\[[a-Z]*\]")
set -l volume (amixer -D pulse get Master | tail -n 1 | grep -o "[0-9]*\%" | awk '{print "Volume: " $1}')

if test "$mute" = "[off]"
    echo (echo $volume) "(Muted)"
else 
    echo (echo $volume)
end
    
