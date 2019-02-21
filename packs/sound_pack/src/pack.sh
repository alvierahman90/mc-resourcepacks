#!/usr/bin/env bash
zip -r -0 sound.zip *
echo "Showing sha1sum of sound.zip..."
sha1sum sound.zip
echo "Removing old texture pack..."
rm /home/alvie/Documents/MultiMC/instances/1.13.2/.minecraft/resourcepacks/sound.zip
echo "Copying new texture pack..."
cp sound.zip /home/alvie/Documents/MultiMC/instances/1.13.2/.minecraft/resourcepacks/sound.zip
echo "Copying new texture pack to fileserver..."
scp sound.zip dietpi:/var/www/files/sound.zip
echo "Done!"
