@echo off
Echo Dpi Reset
timout /t 1 >nul 2>&1
adb devices
Echo Press any key to contine if your device is shown
pause >nul 2>&1
adb shell wm density reset
adb shell am display-density reset
echo density should be reset! Press any key to close
pause >nul 2>&1