@echo off
:: Windows 2000 – Fake Glass + Clean (không đụng đến wallpaper của bro)

:: Fake glass titlebar + taskbar (Win2000 style max đẹp)
reg add "HKCU\Control Panel\Colors" /v ActiveTitle         /t REG_SZ /d "10 36 106"     /f >nul
reg add "HKCU\Control Panel\Colors" /v GradientActiveTitle /t REG_SZ /d "16 132 208"   /f >nul
reg add "HKCU\Control Panel\Colors" /v TitleText           /t REG_SZ /d "255 255 255" /f >nul
reg add "HKCU\Control Panel\Colors" /v InactiveTitle       /t REG_SZ /d "70 70 170"   /f >nul

:: Bật Luna theme nếu có (cho màu metallic đẹp nhất)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ThemeManager" /v ThemeActive /t REG_SZ /d "1" /f >nul 2>nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ThemeManager" /v DllName /t REG_EXPAND_SZ /d "%SystemRoot%\Resources\Themes\Luna\Luna.msstyles" /f >nul 2>nul

:: Làm cửa sổ + button sáng bóng hơn tí
reg add "HKCU\Control Panel\Colors" /v ButtonFace /t REG_SZ /d "212 208 200" /f >nul
reg add "HKCU\Control Panel\Colors" /v Window     /t REG_SZ /d "255 255 255" /f >nul

:: Áp dụng ngay
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe >nul

exit