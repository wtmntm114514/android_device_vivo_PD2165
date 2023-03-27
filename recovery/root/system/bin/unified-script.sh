#!/system/bin/sh
# This script is needed to automatically set device props.

load_veux()
{
    resetprop "ro.product.odm.model" "V2165A"
    resetprop "ro.product.system.model" "V2165A"
    resetprop "ro.product.vendor.model" "V2165A"
    resetprop "ro.product.name" "PD2165"
    resetprop "ro.build.product" "PD2165"
    resetprop "ro.product.device" "PD2165"
    resetprop "ro.product.odm.device" "PD2165"
    resetprop "ro.product.vendor.device" "PD2165"
    resetprop "ro.product.board" "PD2165"
}


load_PD2165

device=$(getprop ro.product.device)
echo "I:Loaded $device this props" >> /tmp/recovery.log

exit 0
