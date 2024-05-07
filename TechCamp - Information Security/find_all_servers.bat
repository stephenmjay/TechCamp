@echo off
set start_ip=192.168.1.1
set end_ip=192.168.1.254

echo Discovering servers in the range %start_ip% to %end_ip%

for /l %%i in (%start_ip% %end_ip%) do (
    ping -n 1 %%i >nul
    if errorlevel 1 (
        echo %%i is not responding
    ) else (
        echo %%i is responding
    )
)
