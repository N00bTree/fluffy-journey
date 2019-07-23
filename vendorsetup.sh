find ./omni_*.mk | cut -d'/' -f4 | cut -d'.' -f1 > .list_devices

for build_variant in eng user userdebug; do
  for device in $(cat .list_devices); do
    add_lunch_combo $device-$build_variant
  done
done

rm .list_*