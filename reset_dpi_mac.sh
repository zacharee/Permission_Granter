#!/bin/bash

echo 'DPI Resetter'

sleep 1

./files/MAC/adb devices

read -n1 -rsp 'Press any key to continue if your device is shown.' key
echo ''
./files/MAC/adb shell wm density reset
./files/MAC/adb shell am display-density reset

echo 'DPI should be reset!'