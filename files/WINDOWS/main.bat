@echo off
echo Welcome to Permission Granter for Unrooted Devices
echo For apps by Zachary Wander
echo By Veibi
echo V 0.0.0.3
timeout /t 1 >nul 2>&1
echo Starting adb server
adb start-server
Echo Please follow these instructions before you continue
echo 1. Enable usb debugging on your android Device
echo 2. Plug your device into your pc
echo 3. A popup may appear, If so click ok to allow this pc to use adb on your device
Echo Once you have followed these steps press any key to contine
pause >nul 2>&1
adb devices
echo Your devices should be shown. If not, restart
echo Press any key to give Permissions
pause >nul 2>&1
adb shell pm grant com.zacharee1.systemuituner android.permission.WRITE_SECURE_SETTINGS
adb shell pm grant com.zacharee1.systemuituner android.permission.DUMP
adb shell pm grant com.zacharee1.dpichanger android.permission.WRITE_SECURE_SETTINGS
Echo If everything went smoothly then, Success! Try using your apps!
echo press any key to close
pause >nul 2>&1
adb kill server
