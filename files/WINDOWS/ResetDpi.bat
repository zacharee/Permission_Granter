@echo off
Echo DPI Resetter
timout /t 1 >nul 2>&1
adb devices
Echo Press any key to continue if your device is shown
pause >nul 2>&1
adb shell wm density reset
adb shell am display-density reset
echo DPI should be reset! Press any key to close
pause >nul 2>&1