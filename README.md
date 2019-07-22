# derulo

Give your co-workers a quick information security lesson by derulo'ing them. Maybe next time they will remember to lock their machine.

##### What?

The script instantly changes the desktop's background of the machine it's run on.

##### Why?

If your workplace is friendly enough to pull off pranks on each other and some of you care about information security, the one and only Jason Derulo will be a perfect reminder that an unattended computer should be locked.

## macOS

Tested on High Sierra and Mojave. Admin privileges are not required. Common raster image types, such as JPG, PNG, BMP, GIF (they'll be still), etc. are supported.

_Please note that the script may have to be run more than once._

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

   # Example:
   # curl -s derulo.me/mac | bash -s https://html5box.com/html5gallery/images/Waves_1024.jpg
   ```

   custom image from disk:

   ```bash
   curl -s derulo.me/mac | bash -s file://$HOME/<path_to_img>

   # Example:
   # curl -s derulo.me/mac | bash -s file://$HOME/Downloads/derulo.bmp
   # with absolute path:
   # curl -s derulo.me/mac | bash -s file:///Users/john/Downloads/derulo.bmp
   ```

3. There may appear a warning pop-up, which you just have to dismiss by pressing `OK`.

   ![Warning pop-up](https://raw.githubusercontent.com/amrwc/derulo/master/assets/warning-pop-up.png)

## Windows

CMD doesn't have curl-like program to download a script and images, therefore this method is more verbose. The PowerShell version is more succinct, but still too long to enter manually.

_Please note that the script may have to be run more than once._

### PowerShell

_In some more restricted environments the PowerShell method may not work. In such case, try one of the CMD methods below._

#### CMD + PowerShell

Tested on Windows 10. Admin privileges are not required.

This method utilises PowerShell to download the required files, but relies on the batch script to mitigate potential restrictions around `.ps1` files.

1. Open CMD

   - press `Win + R`,
   - type `cmd`,
   - press `return`.

2. Run:

   ```batch
   :: Pro tip: triple-click on the line below to quickly highlight it
   powershell Invoke-RestMethod -Uri http://derulo.me/powershell -OutFile powershell.bat && powershell.bat
   ```

### CMD only

Tested on Windows 7 and Windows 10. Admin privileges are not required.

_Please note that the script may have to be run more than once._

#### Copy-paste

1. Download any `.bmp` image ([example derulo.bmp](http://nsfpl.com/wp-content/uploads/2015/03/jason-derulo.bmp)), call it `derulo.bmp`.

2. Open CMD

   - press `Win + R`,
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

1. Save the `windows.bat` script locally.

2. Download any `.bmp` image ([example derulo.bmp](http://nsfpl.com/wp-content/uploads/2015/03/jason-derulo.bmp)), call it `derulo.bmp`. Make sure it's placed in the same directory as the `windows.bat` script.

3. Double-click the `windows.bat` script, or run it through CMD by typing the script's name after navigating to its directory.

## Caveats

- Windows version
  - leaves the `derulo.bmp` image behind,
  - CMD/batch version
    - doesn't allow for an automated image/script download,
    - only supports bitmaps (`.bmp` images).
