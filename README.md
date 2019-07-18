# derulo

Give your co-workers a quick information security lesson by derulo'ing them. Maybe next time they will remember to lock their machine.

##### What?

The script instantly changes the desktop's background of the machine it's run on.

##### Why?

If your workplace is friendly enough to pull off pranks on each other and some of you care about information security, the one and only Jason Derulo will be a perfect reminder that an unattended computer should be locked.

## macOS

Tested on High Sierra and Mojave. Admin privileges are not required.

1. Open Terminal.app

   - press `cmd + space`,
   - type `terminal`,
   - press `return`.

2. Run:

   ```bash
   bash <(curl -s derulo.me/mac)
   ```

   or:

   ```bash
   curl -s derulo.me/mac | bash -s
   ```

   custom image:

   ```bash
   curl -s derulo.me/mac | bash -s <url_to_img>
   ```

3. There may appear a warning pop-up, which you just have to dismiss by pressing `OK`.

   ![Warning pop-up](https://raw.githubusercontent.com/amrwc/derulo/master/assets/warning-pop-up.png)

## Windows

CMD doesn't have curl-like program to download a script and images, therefore this method is more verbose. The PowerShell command for Windows 10 will be more succinct, but most likely still too long to enter manually.

### CMD/Batch script

Tested on Windows 7 and Windows 10. Admin privileges are not required.

1. Download any `.bmp` image ([example derulo.bmp](http://nsfpl.com/wp-content/uploads/2015/03/jason-derulo.bmp)), call it `derulo.bmp`.

2. Open CMD

   - press `Win + R`,
   - type `cmd`,
   - press `return`.

3. Run

   ```PowerShell
   :: NOTE: The script assumes that the image is in the default 'Downloads' directory.
   reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "" /f
   reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "C:\Users\%USERNAME%\Downloads\derulo.bmp" /f

   :: Runs the 'update' dll multiple times to ensure an immediate effect
   start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
   start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
   start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
   start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
   start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters

   :: Clean up
   del "C:\Users\%USERNAME%\Downloads\derulo.bmp"
   cls
   ```

**Alternatively**

1. Save the `windows.bat` script locally.

2. Download any `.bmp` image ([example derulo.bmp](http://nsfpl.com/wp-content/uploads/2015/03/jason-derulo.bmp)), call it `derulo.bmp`. Make sure it's placed in the same directory as the `windows.bat` script.

3. Double-click the `windows.bat` script, or run it through CMD by typing the script's name after navigating to its directory.

## Caveats

- The CMD version doesn't allow for an automated image/script download.
