#!/bin/bash

echo 'DPI Resetter'

sleep 1

adb devices

read -n1 -rsp 'Pres any key to continue if your device is shown.' key
echo ''
adb shell wm density reset
adb shell am display-density reset

echo 'DPI should be reset!'