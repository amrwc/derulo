# derulo

Give your co-workers a quick information security lesson by derulo'ing them. Maybe next time they will remember to lock their machine.

##### What?

The script instantly changes the desktop's background of the machine it's run on.

##### Why?

If your workplace is friendly enough to pull off pranks on each other and some of you care about information security, the one and only Jason Derulo will be a perfect reminder that an unattended computer should be locked.

## Mac

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

## Caveats

- Mac only. For now…
