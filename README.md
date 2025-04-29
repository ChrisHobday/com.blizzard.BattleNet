# A Battle.net Flatpak (Unofficial)
## Building
> **_NOTE:_**  With org.wine.Sdk installed.
```console
flatpak run org.flatpak.Builder build-dir --repo=repo --force-clean com.blizzard.BattleNet.yml
```
## Installing
```console
flatpak install --user ./repo com.blizzard.BattleNet
```
## Running
```console
flatpak run com.blizzard.BattleNet
```
## Removing
```console
flatpak remove com.blizzard.BattleNet
```
## Troubleshooting
- Check if Flatpak is installed
```console
flatpak list | grep Battle.net
```
- Enter Flatpak in command line mode
```console
flatpak run --command=sh com.blizzard.BattleNet
```
## Flatpak locations
- Installation directory             = /var/lib/flatpak/app/com.blizzard.BattleNet/
- Installation directory (User mode) = ~/.local/share/flatpak/app/com.blizzard.BattleNet/
- Wine prefix                        = ~/.var/app/com.blizzard.BattleNet/data/wine
