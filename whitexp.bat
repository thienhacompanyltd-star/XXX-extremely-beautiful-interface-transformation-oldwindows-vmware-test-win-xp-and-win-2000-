@echo off
:: Windows XP Fake Aero Glass (silent)

reg add "HKCU\Control Panel\Desktop" /v WallPaper /t REG_SZ /d "C:\Users\Tuyen\Downloads\undefined - Imgur.jpg" /f >nul

:: Fake blur + transparent titlebar trick
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarGlomming /t REG_DWORD /d 0 /f >nul
reg add "HKCU\Control Panel\Colors" /v ActiveTitle /t REG_SZ /d "255 255 255" /f >nul
reg add "HKCU\Control Panel\Colors" /v TitleText /t REG_SZ /d "0 0 0" /f >nul

:: Enable classic transparency hack
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ThemeManager" /v DllName /t REG_EXPAND_SZ /d "%%SystemRoot%%\resources\Themes\Aero\Aero.msstyles" /f >nul 2>nul

RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe >nul
exit