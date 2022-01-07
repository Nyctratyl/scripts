set -l charge (cat /sys/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0A:00/power_supply/BAT0/capacity)
#So that the system has time to recognize the update
sleep 1
set -l bat_status (udevadm info --path=/sys/class/power_supply/BAT0 | grep "POWER_SUPPLY_STATUS" | cut -c 24-40)
if test $charge -lt 1; and test "$bat_status" = "Discharging"
    sudo systemctl hibernate
end
echo (echo $charge) " " (echo $bat_status) | awk '{print "Battery: " $1 "% (" $2")"}'
