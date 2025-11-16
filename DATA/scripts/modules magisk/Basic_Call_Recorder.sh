#!/bin/bash

# LSPosed

REPO="chenxiaolong/BCR"

# Variables pour filtrer le fichier
PREFIX="BCR"        # Exemple : le début du nom du fichier
SUFFIX=".zip"        # Exemple : l'extension

# Récupérer le tag exact de la dernière release
latest_tag=$(curl -s "https://api.github.com/repos/$REPO/releases/latest" | jq -r '.tag_name')

# Récupérer dynamiquement l'asset zip correspondant aux critères
asset_url=$(curl -s "https://api.github.com/repos/$REPO/releases/tags/$latest_tag" \
            | jq -r --arg PREFIX "$PREFIX" --arg SUFFIX "$SUFFIX" \
              '.assets[] | select(.name | startswith($PREFIX) and endswith($SUFFIX)) | .browser_download_url')

file_name=$(basename "$asset_url")

echo "Téléchargement de $file_name depuis $asset_url ..."
curl -L "$asset_url" -o "$file_name"

echo "Installation avec Magisk..."
adb push "$file_name" /sdcard/
adb shell "su -c 'magisk --install-module /sdcard/$file_name'"

rm "$file_name"
adb shell "rm /sdcard/$file_name"

echo "Module installé"

