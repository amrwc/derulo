:: Give your co-workers a quick information security lesson by derulo'ing them.
:: Maybe next time they will remember to lock their machine.
:: 
:: What?
:: The script instantly changes the desktop's background of the machine it's run on.
:: 
:: Why?
:: If your workplace is friendly enough to pull off pranks on each other and
:: some of you care about information security, the one and only Jason Derulo
:: will be a perfect reminder that an unattended computer should be locked.
:: 
:: Windows-specific; amending current user's registry keys
:: 
:: Usage:
:: windows.bat

:: Turns off the output to the command-line
@echo off

:: set imgPath=C:\Users\%USERNAME%\Downloads\derulo-me\derulo.jpg

:: Sets the wallpaper to the one supplied
:: NOTE: If the new image is not .bmp, the 'UpdatePerUserSystemParameters'
::       may have to be run a few times for the change to be applied.
:: Source: https://social.technet.microsoft.com/Forums/en-US/w7itproui/thread/72a9b4bf-071b-47cd-877d-0c0629a9eb90/#c58b97cd-3a91-4409-80aa-39d53ef638cf
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "" /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "C:\Users\%USERNAME%\Downloads\derulo-me\derulo.bmp" /f

:: Runs the 'update' dll multiple times to ensure an immediate effect
::timeout /t 5 >nul
start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters

cls
