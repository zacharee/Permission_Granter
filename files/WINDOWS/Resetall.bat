@echo off
echo WARNING THIS WILL RESET BOTH DENSITY AND RESOLUTION
echo Press any key to contine
pause >nul 2>&1
adb shell wm size reset >nul 2>&1
adb shell wm density reset >nul 2>&1
adb shell am display-density reset >nul 2>&1
adb shell am display-size reset >nul 2>&1
Echo DONE!
pause >nul 2>&1
