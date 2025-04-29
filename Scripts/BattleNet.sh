#!/bin/sh
echo "Running Wineboot"
wineboot

echo "Updating registry"
wine regedit /app/share/WineGraphics.reg
sleep 3

echo "Setting up Discord rich presence"
for i in {0..9}; do
    test -S $XDG_RUNTIME_DIR/discord-ipc-$i ||
    ln -sf {app/com.discordapp.Discord,$XDG_RUNTIME_DIR}/discord-ipc-$i;
done

echo "Checking if Battle.net is already installed"
if [ -d "/var/data/wine/drive_c/Program Files (x86)/Battle.net/" ]; then
  echo "Battle.net is installed"

  echo "Changing directory to /var/data/wine/drive_c/Program Files (x86)/Battle.net/"
  cd "/var/data/wine/drive_c/Program Files (x86)/Battle.net/"

  echo "Launching Battle.net"
  wine "/var/data/wine/drive_c/Program Files (x86)/Battle.net/Battle.net.exe"
else
  echo "Battle.net is not installed"

  echo "Launching Battle.net setup"
  wine /app/bin/BattleNetSetup.exe
fi