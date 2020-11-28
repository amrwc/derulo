# derulo

Give your co-workers a quick information security lesson by derulo'ing them.
Maybe next time they will remember to lock their machine.

### What?

The script instantly changes the desktop's background of the machine it's run
on.

### Why?

If your workplace is friendly enough to pull off pranks and some of you care
about information security, the one and only Jason Derulo will be a perfect
reminder of how quickly damage can be done and that an unattended computer
should be locked.

_Please note that the scripts may have to be run more than once for the changes
to take effect._

![Demo GIF](./assets/derulo-demo.gif)

## macOS

Tested on High Sierra, Mojave and Catalina. Admin privileges are not required.
Common raster image types, such as JPG, PNG, BMP, GIF (they'll be still), etc.
are supported.

1. Open Terminal.app

   - press `cmd` + `space`,
   - type `terminal`,
   - press `return`.

2. Run the script

   ```console
   curl derulo.me/mac | bash

   # Custom image:
   curl derulo.me/mac | bash -s <url_to_img>
   # Example:
   curl derulo.me/mac | bash -s https://html5box.com/html5gallery/images/Waves_1024.jpg

   # Image from disk:
   curl derulo.me/mac | bash -s file://$HOME/<path_to_img>
   # Example:
   curl derulo.me/mac | bash -s file://$HOME/Downloads/derulo.bmp
   # With an absolute path:
   curl derulo.me/mac | bash -s file:///Users/john/Downloads/derulo.bmp
   ```

3. There may appear a permission-related pop-up, which you just have to dismiss
   by pressing `OK`.

   ![macOS warning pop-up](https://raw.githubusercontent.com/amrwc/derulo/master/assets/warning-pop-up.png)

## Windows

CMD doesn't have curl-like program to download a script and images out of the
box, therefore this method requires more steps. The PowerShell one-liner is
more succinct, but still a bit too long to remember and type out.

### CMD + PowerShell

Tested on Windows 10. Admin privileges are not required.

This method utilises PowerShell to download the required files, but relies on
the batch script to mitigate potential restrictions around `.ps1` files.

_In some restricted environments the PowerShell method may not work. In such
case, try one of the CMD-only methods below._

1. Open CMD

   - press `Win` + `R`,
   - type `cmd`,
   - press `return`.

2. Run:

   ```batch
   :: Pro tip: triple-click on the line below to quickly highlight it
   powershell Invoke-RestMethod -Uri derulo.me/powershell -OutFile derulo.bat && derulo.bat
   ```

### CMD-only

Tested on Windows 7 and Windows 10. Admin privileges are not required.

#### Copy-paste

1. Download any `.bmp` image
   ([example](https://i7.putstuffonline.com/0rtEegbeDUI/putstuffonline.bmp)),
   and call it `derulo.bmp`.

2. Open CMD

   - press `Win` + `R`,
   - type `cmd`,
   - press `return`.

3. Run:

   ```batch
   :: NOTE: The script assumes that the image is in the default 'Downloads' directory.
   reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "" /f
   reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "C:\Users\%USERNAME%\Downloads\derulo.bmp" /f

   :: Runs the 'update' dll multiple times to ensure an immediate effect
   start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
   start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
   start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
   start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
   start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters

   :: Clear screen
   cls
   ```

#### Local batch file

1. Save the `cmd.bat` script locally.

2. Download any `.bmp` image
   ([example](https://i7.putstuffonline.com/0rtEegbeDUI/putstuffonline.bmp)),
   and call it `derulo.bmp`. Make sure it's placed in the same directory as the
   `cmd.bat` script.

3. Double-click the `cmd.bat` script, or run it through CMD by typing the
   script's name after navigating to its directory.

   ```batch
   cd <path_to_script>
   cmd.bat
   ```

## Caveats

- Windows version
  - Only supports bitmaps (`.bmp` images).
  - Leaves the `derulo.bmp` image behind (it may be possible to delete it, but
    not immediately after the script is finished).
  - The pure batch version doesn't support automated script/image download.
