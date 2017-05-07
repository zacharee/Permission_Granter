#!/bin/bash

echo 'Welcome to Permission Granter for Unrooted Devices'
echo 'For apps by Zachary Wander'
echo 'By Veibi'
echo 'V 0.0.0.2'

sleep 1

echo 'Starting ADB server'
./files/MAC/adb start-server

echo 'Please follow these instructions before you continue'

echo '1. Enable usb debugging on your android Device'
echo '2. Plug your device into your pc'
echo '3. A popup may appear, If so click ok to allow this pc to use adb on your device'

read -n1 -rsp 'Once you have followed these steps press any key to continue' key
echo ''
./files/MAC/adb devices

echo 'Your devices should be shown. If not, restart this app'
read -n1 -rsp 'Press any key to give Permissions' key
echo ''
./files/MAC/adb shell pm grant com.zacharee1.systemuituner android.permission.WRITE_SECURE_SETTINGS
./files/MAC/adb shell pm grant com.zacharee1.systemuituner android.permission.DUMP

./files/MAC/adb shell pm grant com.zacharee1.dpichanger android.permission.WRITE_SECURE_SETTINGS

echo 'If everything went smoothly then, Success! Try using your apps!'
read -n1 -rsp 'Press any key to close' key
echo ''
./files/MAC/adb kill-server