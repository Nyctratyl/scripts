set -l wifi (nmcli device wifi | grep "\*" | awk '{print "WIFI: " $2 " (" $7 "%)"}')
if test "$wifi" = ""
    echo "WIFI: Disconnected"
else
    echo (echo $wifi)
end
