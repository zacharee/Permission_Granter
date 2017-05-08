@echo off
set l=EN
reg query "hklm\system\controlset001\control\nls\language" /v Installlanguage> temp.bat
findstr /m "0409" temp.bat >nul 2>&1
if %errorlevel%==0 (
set l=EN
)
findstr /m "0C0A" temp.bat >nul 2>&1
if %errorlevel%==0 (
set l=ES
)
(
set /p la=
set /p lb=
set /p lc=
set /p ld=
set /p le=
set /p lf=
set /p lg=
set /p lh=
set /p li=
set /p lj=
set /p lk=
)<%l%.txt
:start
echo %la%
type Versioninfo.txt
echo %lb%
timeout /t 1 >nul 2>&1
adb kill-server >nul 2>&1
echo %lc%
del temp.txt
adb start-server> temp.txt
type temp.txt
findstr /m "successfully" temp.txt >nul 2>&1
if %errorlevel%==0 (
echo %ld%
) else (
echo %le%
timeout /t 5
ver > nul
cls
goto start
)
@echo %lf%
pause >nul 2>&1
:adb
adb devices> temp.txt
findstr /m "device\>" temp.txt >nul 2>&1
if %errorlevel%==0 (
echo %lg%
) else (
echo %lh%
pause >nul 2>&1
goto adb
)
echo %li%
pause >nul 2>&1
adb shell pm grant com.zacharee1.systemuituner android.permission.WRITE_SECURE_SETTINGS >nul 2>&1
adb shell pm grant com.zacharee1.systemuituner android.permission.DUMP> temp.txt
findstr /m "Unknown" temp.txt >nul 2>&1
if NOT %errorlevel%==0 (
echo Enabled for systemui tuner
)
adb shell pm grant com.zacharee1.dpichanger android.permission.WRITE_SECURE_SETTINGS> temp.txt
findstr /m "Unknown" temp.txt >nul 2>&1
if NOT %errorlevel%==0 (
echo Enabled for Dpi Changer
)
echo %lj%
echo %lk%
pause >nul 2>&1
echo %ll% 
adb kill-server