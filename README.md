# A Battle.net Flatpak (Unofficial)
## Building
> **_NOTE:_**  With org.wine.Sdk and org.wine.Platform installed.
```console
flatpak run org.flatpak.Builder build-dir --repo=repo --force-clean com.blizzard.Battlenet.yml
```
## Installing
```console
flatpak install --user ./repo com.blizzard.Battlenet
```
## Running
```console
flatpak run com.blizzard.Battlenet
```
## Removing
```console
flatpak remove com.blizzard.Battlenet
```
## Troubleshooting
- Check if Flatpak is installed
```console
flatpak list | grep Battle.net
```
- Enter Flatpak in command line mode
```console
flatpak run --command=sh com.blizzard.Battlenet
```
## Flatpak locations
- Installation directory             = /var/lib/flatpak/app/com.blizzard.Battlenet/
- Installation directory (User mode) = ~/.local/share/flatpak/app/com.blizzard.Battlenet/
- Wine prefix                        = ~/.var/app/com.blizzard.Battlenet/data/wine
