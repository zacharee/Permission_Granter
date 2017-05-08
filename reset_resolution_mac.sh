#!/bin/bash

echo 'Resolution Resetter'

sleep 1

./files/MAC/adb devices

read -n1 -rsp 'Press any key to continue if your device is shown' key
echo ''

./files/MAC/adb shell wm size reset
./files/MAC/adb shell am display-size reset

echo 'Resolution should be reset!'