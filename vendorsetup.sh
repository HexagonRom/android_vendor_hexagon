for device in $(python vendor/hexagon/tools/get_official_devices.py)
do
for var in eng user userdebug; do
add_lunch_combo hexagon_$device-$var
done
done
