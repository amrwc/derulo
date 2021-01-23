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
:: NOTE: This script is Windows-specific – it amends current user's registry
:: keys.
::
:: Usage:
:: 1. Download any '.bmp' image, call it 'derulo.bmp'. Make sure it's placed
::    in the same directory as the 'windows.bat' script.
:: 2. Run 'windows.bat'.

:: Turns off the output to the command-line
@echo off

:: Sets the wallpaper to the one supplied
:: Source: https://social.technet.microsoft.com/Forums/en-US/w7itproui/thread/72a9b4bf-071b-47cd-877d-0c0629a9eb90/#c58b97cd-3a91-4409-80aa-39d53ef638cf
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "" /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d %CD%\derulo.bmp /f

:: Runs the 'update' dll multiple times to ensure an immediate effect
start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters

:: Clean up
cls
del %CD%\windows.bat
