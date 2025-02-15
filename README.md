# Blizzard BattleNet Flatpak (Unofficial)
## Installing
- Download com.blizzard.BattleNet.flatpak from releases
- Install com.blizzard.BattleNet.flatpak (sudo needed for installing single use Flatpak bundle)
```console
sudo flatpak install com.blizzard.BattleNet.flatpak
```
## Launching
- Launch the BattleNet Flatpak (Either search for the app in your menu and click it) or
```console
flatpak run com.blizzard.BattleNet
```
## Uninstalling
- Remove BattleNet Flatpak
```console
flatpak remove com.blizzard.BattleNet
```
## Downloading/Cloning this repo
- Click the green button to download zip and extract once downloaded or clone repo with
```console
git clone --recurse-submodules https://github.com/ChrisHobday/com.blizzard.BattleNet
```
## Building
- Install Flatpak builder
```console
flatpak install flathub org.flatpak.Builder
```
- Install the platform this Flatpak will be using
```console
flatpak install flathub org.freedesktop.Platform//24.08 org.freedesktop.Sdk//24.08
```
- Download and install WineStaging Flatpaks from https://github.com/ChrisHobday/org.winehq.WineStaging/releases (This Flatpak uses them as a base)
- Build the Flatpak with flatpak-builder (Run this from within the com.blizzard.BattleNet directory)
```console
flatpak run org.flatpak.Builder --force-clean --repo=repo build-dir com.blizzard.BattleNet.yml
```
## User installation while building
- Replace last Building step with
```console
flatpak run org.flatpak.Builder --force-clean --repo=repo --user --install build-dir com.blizzard.BattleNet.yml
```
## Building single use Flatpak bundle like in the releases (After having followed the Building steps above)
- Build the Flatpak bundle (Run this from within the com.blizzard.BattleNet directory after having followed the Building steps above)
```console
flatpak build-bundle repo com.blizzard.BattleNet.flatpak com.blizzard.BattleNet
```
## Troubleshooting
- Check if Flatpak is installed
```console
flatpak list | grep BattleNet
```
- Enter Flatpak in command line mode
```console
flatpak run --command=sh com.blizzard.BattleNet
```
## Flatpak locations
- Installation directory             = /var/lib/flatpak/app/com.blizzard.BattleNet/
- Installation directory (User mode) = ~/.local/share/flatpak/app/com.blizzard.BattleNet/
- User cache directory               = ~/.var/app/com.blizzard.BattleNet/cache/
- User config directory              = ~/.var/app/com.blizzard.BattleNet/config/
- User data directory                = ~/.var/app/com.blizzard.BattleNet/data/
- Wine prefix                        = ~/.var/app/com.blizzard.BattleNet/data/WinePrefix
