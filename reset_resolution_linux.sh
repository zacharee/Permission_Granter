#!/bin/bash

echo 'Resolution Resetter'

sleep 1

adb devices

read -n1 -rsp 'Press any key to continue if your device is shown' key
echo ''

adb shell wm size reset
adb shell am display-size reset

echo 'Resolution should be reset!'