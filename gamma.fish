set -l level (cat /sys/class/backlight/intel_backlight/brightness)
echo $level "/75" | bc | awk '{print "Brightness: " $1 "%"}'
