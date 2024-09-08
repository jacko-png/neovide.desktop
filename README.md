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


Contributing
------------

Contributions are welcome and are expected to consist of extensions to the MimeType key, localisations of the GenericName key or revisions of the Exec key. You can use the handy `$ make install` to quickly replace your current local neovide.desktop and neovide.png with the newly configured one during testing. `# make install --system` is expected to copy the files to the system directorys, `/usr/share/applications` and `/usr/share/icons(?)`.
