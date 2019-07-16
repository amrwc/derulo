set imgPath=C:\Users\%USERNAME%\Downloads\derulo-me\derulo.jpg

:: Sets the wallpaper to the one supplied
:: NOTE: If the new image is not .bmp, the 'UpdatePerUserSystemParameters'
::       may have to be run a few times for the change to be applied.
:: Source: https://social.technet.microsoft.com/Forums/en-US/w7itproui/thread/72a9b4bf-071b-47cd-877d-0c0629a9eb90/#c58b97cd-3a91-4409-80aa-39d53ef638cf
reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /d "" /f
reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /d %imgPath% /f
reg add "HKEY_CURRENT_USER\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 2 /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
:: RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
:: RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
:: RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
pause
exit
