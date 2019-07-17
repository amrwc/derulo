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

The Windows scripts aren't as elegant due to the system's command-line nature – CMD doesn't have a curl-like program that would simplify the process. PowerShell, however, has such capabilities, but the command is still too long to enter manually.

#### Windows 7

1. Download any `.bmp` image, call it `derulo.bmp` and place it in the following directory

```
C:\Users\%USERNAME%\Downloads\derulo-me\derulo.bmp
```

2. Open CMD

   - press `Win + R`,
   - type `cmd`,
   - press `return`.

3. Run

```
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "" /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "C:\Users\%USERNAME%\Downloads\derulo-me\derulo.bmp" /f

:: Runs the 'update' dll multiple times to ensure an immediate effect
start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters
start "" /b rundll32.exe user32.dll,UpdatePerUserSystemParameters

cls
```

Alternatively

1. Download the `windows.bat` script.
2. Download any `.bmp` image, call it `derulo.bmp` and place it in the following directory

```
C:\Users\%USERNAME%\Downloads\derulo-me\derulo.bmp
```

2. Open CMD

   - press `Win + R`,
   - type `cmd`,
   - press `return`.

3. In the directory with the downloaded script, run

```
windows.bat
```

## Caveats

- Version for Windows 7 doesn't allow for an automated image/script download.
