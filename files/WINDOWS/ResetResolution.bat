@echo off
Echo Resolution Reset
timout /t 1 >nul 2>&1
adb devices
Echo Press any key to continue if your device is shown
pause >nul 2>&1
adb shell wm size reset
adb shell am display-size reset
echo Resolution should be reset! Press any key to close
pause >nul 2>&1