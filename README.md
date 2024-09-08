neovide.desktop
===============

A desktop entry for Neovide

What is a desktop file?
-----------------------

Desktop entries (ext: .desktop, mime: $MIME_DESKTOP) are plaintext files that specify the name, command and icon of software/applications in KDE- or GNOME-like environments. Desktop entries look similar to INI/yaml/toml, and have keys such as Exec, Icon, Name and MimeType. The keys can also be localised.

Getting neovide.desktop
-----------------------

The file neovide.desktop can be obtained in various ways:

1. via git:

```
git clone git@github.com:jacko-png/neovide.desktop
cd neovide.desktop/
```

2. by downloading and extracting a [release](https://github.com/jacko-png/neovide.desktop/releases)

3. by downloading the raw files via GitHub

Any way, you must move the files:

`$ make install` (if the git repo was cloned)

or

```
A=~/.local/share/applications/
# if applications dir does not exist
mkdir -p "$A"
cp ./neovide.desktop "$A"

B=~/.icons/
# if icons dir does not exist
mkdir "$B"
cp ./neovide.png "$B"
```

Using neovide.desktop
---------------------

After a logout, reboot, some time or a run of `$ update-desktop-database`, the Neovide button will show in your Desktop Environment's application menu. You can click it to run Neovide.

To configure the opening of files via [xdg-open(1)](https://linux.die.net/man/1/xdg-open), your file browser, or other well-behaving applications: use `$ xdg-mime default neovide.desktop <MIMETYPES>..`.

That's kind of the extent of the use of this file…

Advance usage
-------------

System adminstrators may want to restrict the installation to a particular user, or install the entry and icon globally. A way to install the file per-user using make would be: `# su <USER> make install`. For global installation, `# make install-sys` copies the files to the system directories, `/usr/share/applications` and `/usr/share/icons`.

By default, the `neovide.png` that's in use is one from neovide/neovide. Other images are found under `./icons/`. Any images under a subdirectory of `./icons/` refer to a theme, and any directly under the directory are agnostic. To change the icon, run:

```
$ rm neovide.png
$ cp ./icons/my_icon.png neovide.png
```

or just `cp -i ./icons/my_icon.png neovide.png`

By the way, did you know that tree/main/assets has a desktop entry? 🫠

Furthermore, one may want different Neovide icons per theme. Thus, instead of having `~/.icons/neovide.png`, they should have `~/.icons/my_theme/neovide.png` and any requisite theme boilerplate. One may consider a push to the theme's repository with a custom Neovide icon, or a push to this repository.

If you have a frutiger-aero one, jackharro282 at gmail dot com would like to see it.


Contributing
------------

Contributions are welcome and are expected to consist of extensions to the MimeType key, localisations of the GenericName key or revisions of the Exec key. You can use the handy `$ make install` to quickly replace your current local neovide.desktop and neovide.png with the newly configured ones during testing. 
