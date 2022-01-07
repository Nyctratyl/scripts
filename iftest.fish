set -l charge "4"
set -l stat "Discharging"
if test $charge -lt 8; and test "$stat" = "Discharging"
    echo "It works"
end
