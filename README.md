# Battle.net Flatpak (Unofficial)
## Required Packages
```console
flatpak install org.flatpak.Builder org.freedesktop.Platform//24.08 org.freedesktop.Sdk//24.08 org.freedesktop.Sdk.Debug//24.08 org.freedesktop.Sdk.Docs//24.08 org.freedesktop.Sdk.Extension.mingw-w64//24.08 org.freedesktop.Sdk.Compat.i386//24.08 org.freedesktop.Sdk.Extension.toolchain-i386//24.08
```
```console
flatpak update --subpath= org.freedesktop.Sdk.Locale org.freedesktop.Platform.Locale
```
org.wine.Sdk from https://github.com/ChrisHobday/org.wine.Sdk
---
## Building
> **_NOTE:_**  With org.wine.Sdk installed.
```console
flatpak run org.flatpak.Builder build-dir --repo=repo --force-clean com.blizzard.Battle.net.yml
```
---
## Installing
```console
flatpak install --user ./repo com.blizzard.Battle.net
```
---
## Running
- Launch the Battle.net Flatpak (Either search for the app in your menu and click it) or
```console
flatpak run com.blizzard.Battle.net
```
---
## Removing
```console
flatpak remove com.blizzard.Battle.net
```
---
## Troubleshooting
- Check if Flatpak is installed
```console
flatpak list | grep Battle.net
```
- Enter Flatpak in command line mode
```console
flatpak run --command=sh com.blizzard.Battle.net
```
## Flatpak locations
- Installation directory             = /var/lib/flatpak/app/com.blizzard.Battle.net/
- Installation directory (User mode) = ~/.local/share/flatpak/app/com.blizzard.Battle.net/
- User cache directory               = ~/.var/app/com.blizzard.Battle.net/cache/
- User config directory              = ~/.var/app/com.blizzard.Battle.net/config/
- User data directory                = ~/.var/app/com.blizzard.Battle.net/data/
- Wine prefix                        = ~/.var/app/com.blizzard.Battle.net/data/WinePrefix
