#!/bin/bash

# Déclaration de Variables
title="Androigy"
target="Android 10+ ARMv8 (x64)"
recommanded="Lineage OS"
prerequisites="- Avoir installé les outils adb sur votre ordinateur
- Avoir activé les options développeur sur votre appareil android
- Avoir activé le debug usb dans les options dévellopeur de votre appareil android
- Avoir son smartphone connecté à l'ordinateur en USB
- Bloquer Google Protect dans les options du play store
- \"Vérifier les applis via USB\" doit être désactiver dans les options développeur
"
author="RogerBytes"
link="https://github.com/RogerBytes/Androigy/"
from="https://github.com/RogerBytes/Androigy/releases"
warning="Ne pas poursuivre l'installation si l'archive ne provient pas de $from !"
description="\"$title\" est une suite applicative pour android 10+ armv8.
L'objectif est de simplifier l'expérience Android tout en utilisant des applications majoritairement open source.

Engagez-vous dans une expérience Android renouvelée avec \"$title\", où la liberté rencontre l'innovation !"

lastInfo=" Voici les réglages manuels que vous avez à faire :

Configurer lawnchair
Maintenez appuyez sur l'ecran pour faire apparaitre le meny et \"Paramètres de l'écran d'accueil\", puis menu burger en haut à droite, puis \"Restaurer une sauvegarde\" et choisissez \"Lawnchair Backup***.lawnchairbackup\" dans \"Download\"

Ouvrez Droidify, cliquez sur les trois points en haut à droite, allez dans \"Paramètres\", fait succéssivement \"Import Setting\" et \"Import Repoitories\" en pointant les fichiers \"droidify_settings.json\" et \"droidify_repos.json\".

Configurez osmand
\"Menu Burger\" et \"Paramètres\" et tout en bas importer d'un fichiser, choisir \"osmand.osf\" dans \"Download\"

Configurer Anysoft Keyboard
Ouvrez AnySoftKeyboard depuis Android, faites l'installation jusqu'a \"Et maintenannt\", \"choisissez \"Configurer tout le reste\" sans faire ce qu'il y a au dessus
cliquez sur les 3 points en haut a droite.
Choisissez \"Restaurer\" et \"Restaurer\" il trouvera tout seul.

Lancer une fois K9Mail et mettez votre adresse mail

Applications par defaut dans parametres/Applications/Applis par défaut
\"Gestion des apps par defaut\"
Appli d'accueil : Lawnchair
Appli de Navigateur : Vivaldi
Appli de SMS : QKSMS
Appli de telephone : Téléphone

Se connecter à Davx5
se co à agenda/ethar (avec caldav fruux)  https://dav.fruux.com

Ouvrir MiXplorer et allez dans \"Downloads\" et cliquez sur \"MiXplorer_10_01_2024_18-15-39.mic\" ouvrez avec \"importer\"

Ouvrez Météo et ajoutez votre ville, glissez là en heut.
Connectez vous à Element/messenger/whatsapp
ensuite vous co à votre compte vivaldi

Ouvrez Aurora Store
Pour l'installateur choisissez \"Aurora Service\" (sinon par défaut).
Pour le thème \"système\".
Donnez toutes les autorisations.
Après avoir cliqué sur terminé pour pouvez choisir de vous connecter anonyme où vous co sur compte
Allez dans le menu (en haut à gauche les trois traits) puis \"Paramètres/Personnalisation\" et décochez \"Pages pour vous\"
Retournez au menu (en haut à gauche les trois traits) puis \"Gestionnaire de la liste noire\", cochez les suivants

- FolderSync
- MicroG Services Core
- Pizza Boy GBA
- Pizza Boy
- Scanner de documents OSS
- Shazam

Les stores sont correctement réglés.


Ouvrez Adaway
Choisissez \"Bloqueur de publicité fondé sur la racine\" et continuez l'installation.\"

"

lastText="Merci d'avoir installé \"$title\" !
$author"


# __________________________________________________________

# Fonctions

function pause {
  read -s -n 1 -p "Appuyez sur une touche pour continuer ou 'CTRL+C' pour quitter le script..."
  echo ""
}

function greeting {
  echo -e "$1\n\n**ATTENTION**\n$2\n\n$3\nRecommandé pour $4\n\nPrérequis : \n$5\n\nDescription du produit :\n$6\n\n$7\nCréé par $8\n"
  pause
}

function goodbye {
  echo -e "$1"
  pause
  echo -e "$2"
  read -s -n 1 -p "Appuyez sur une touche pour fermer l'utilitaire d'installation."
  echo ""
}


# __________________________________________________________

# Instructions

## Messages
greeting "$title - Installation" "$warning" "$target" "$recommanded" "$prerequisites" "$description" "$from" "$author"

## Création de dossiers
USER_NAME="$(whoami)"

adb shell mkdir -p /storage/emulated/0/Download/home/$USER_NAME/Documents
adb shell mkdir -p /storage/emulated/0/Download/home/$USER_NAME/Jeux/EmulatorData
adb shell mkdir -p /storage/emulated/0/Download/home/$USER_NAME/Jeux/Rom
adb shell mkdir -p /storage/emulated/0/Download/home/$USER_NAME/Images
adb shell mkdir -p /storage/emulated/0/Download/home/$USER_NAME/Local
adb shell mkdir -p /storage/emulated/0/Download/home/$USER_NAME/Modèles
adb shell mkdir -p /storage/emulated/0/Download/home/$USER_NAME/Musique
adb shell mkdir -p /storage/emulated/0/Download/home/$USER_NAME/Public
adb shell mkdir -p /storage/emulated/0/Download/home/$USER_NAME/Téléchargements/Téléchargements-navigateur
adb shell mkdir -p /storage/emulated/0/Download/home/$USER_NAME/Téléchargements/Téléchargements-jd2
adb shell mkdir -p /storage/emulated/0/Download/home/$USER_NAME/Téléchargements/Téléchargements-torrent
adb shell mkdir -p /storage/emulated/0/Download/home/$USER_NAME/Téléchargements/Téléchargements-mail
adb shell mkdir -p /storage/emulated/0/Download/home/$USER_NAME/Téléchargements/Téléchargements-ferdium
adb shell mkdir -p /storage/emulated/0/Download/home/$USER_NAME/Téléchargements/Téléchargements-youtube
adb shell mkdir -p /storage/emulated/0/Download/home/$USER_NAME/Vidéos
adb shell mkdir -p /storage/emulated/0/Download/home/$USER_NAME/Local/apk/
adb shell mkdir -p /storage/emulated/0/Download/home/$USER_NAME/Local/apks/
adb shell mkdir -p /storage/emulated/0/Download/home/$USER_NAME/Local/xapk/

adb push ./DATA/Import-options/AnySoftKeyboardPrefs.xml /storage/emulated/0/Android/data/com.menny.android.anysoftkeyboard/files/

## Copie de fichiers
adb push ./DATA/Notifications/. /storage/emulated/0/Notifications/
adb push ./DATA/Pictures/. /storage/emulated/0/Pictures/
adb push ./DATA/Import-options/. /storage/emulated/0/Download/
adb push ./DATA/Ringtones/. /storage/emulated/0/Ringtones/


## installer les paquets fdroid et les telecharger
./DATA/scripts/apk-fdroid.sh

## Installation d'apk via une bloucle for
### Boucle pour le dossier ./DATA/app/apk-demo/
for file in ./DATA/app/apk-demo/*
do
  adb install $file
done

### Boucle pour le dossier ./DATA/app/apk-playstore/
for file in ./DATA/app/apk-playstore/*
do
  adb install $file
done


### Copier les fichiers d'applications
adb push ./DATA/app/apks/*.apks /storage/emulated/0/Download/home/$USER_NAME/Local/apks/
adb push ./DATA/app/xapk/*.xapk /storage/emulated/0/Download/home/$USER_NAME/Local/xapk/


### Télécharger la ressource big files
URL="https://github.com/RogerBytes/Androigy/releases/download/v0.0.1-data/big.files.tar.gz"
TMP_DIR="/tmp/androigy_install"
mkdir -p "$TMP_DIR"
cd "$TMP_DIR" || exit 1

echo "Téléchargement de big.files.tar.gz..."
curl -L "$URL" -o big.files.tar.gz

echo "Extraction..."
tar -xzf big.files.tar.gz

# Copier les APK sur le téléphone
if [ -d "apk" ]; then
  echo "Copie des APK vers le téléphone..."
  adb push apk/*.apk "/storage/emulated/0/Download/home/$USER_NAME/Local/apk/"
fi

# Copier les XAPK sur le téléphone
if [ -d "xapk" ]; then
  echo "Copie des XAPK vers le téléphone..."
  adb push xapk/*.xapk "/storage/emulated/0/Download/home/$USER_NAME/Local/xapk/"
fi

# Nettoyage final
cd ~ || exit
rm -rf "$TMP_DIR"

echo "Téléchargement et transfert terminés !"
echo "Vous pouvez maintenant installer les fichiers sur le téléphone via une app compatible (Split APKs Installer, XAPK Installer, etc.)"

echo "Installation terminée !"


# __________________________________________________________

# Zone de test
# Vide


# __________________________________________________________

# Fin du script
goodbye "$lastInfo" "$lastText"

pause
