# derulo

Give your co-workers a quick information security lesson by derulo'ing them.

## Quick usage

1. Open Terminal.app

   - press `cmd + space`,
   - type `terminal`,
   - press `return`.

2. Copy-paste the following

   ```bash
   # Sabotage
   cd ~/Documents
   git pull git@github.com:amrwc/derulo.git
   cd ./derulo
   ./derulo

   # Clean up
   cd ..
   rm -rf ./derulo
   clear
   ```

3. There may appear a warning pop-up, which you just have to dismiss by pressing `OK`.

   ![Warning pop-up](https://github.com/amrwc/derulo/assets/warning-pop-up.png)

## Caveats

-

- Mac only.
- The script only accepts the full path – needs some adjustments in the AppleScript to get the current path.
