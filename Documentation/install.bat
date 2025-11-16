@echo Lancement de l'installation de la suite applicative "Android Clean" sur votre GSM
@echo .
@echo .
@pause

rem Pour les apks (inutile ici)
rem adb install-multiple -r .\DATA\apks\splitted\ali\com.alibaba.aliexpresshd.apk .\DATA\apks\splitted\ali\config.arm64_v8a.apk .\DATA\apks\splitted\ali\config.fr.apk .\DATA\apks\splitted\ali\config.xxhdpi.apk

@for /f "delims=|" %%f in ('dir /b .\DATA\app\apks\*.apk') do @"C:\adb\adb.exe" install -r ".\DATA\apks\%%f"

adb push ./DATA/Notifications/. /storage/emulated/0/Notifications/

adb push ./DATA/Pictures/. /storage/emulated/0/Pictures/

adb push ./DATA/Import-options/. /storage/emulated/0/Download/

adb push ./DATA/Ringtones/. /storage/emulated/0/Ringtones/

@echo .
@echo .
@echo .
@echo   =============
@echo   ! IMPORTANT !
@echo   =============
@echo Ouvrez AnySoftKeyboard depuis Android, faites l'installation jusqu'a "Et maintenannt", "choisissez "Configurer tout le reste" sans faire ce qu'il y a au dessus
@echo cliquez sur les 3 points en haut a droite.
@echo Choisissez "Restaurer" et "choisir un chemin personnalise", allez dans "Telechargement" et choisissez "AnySoftKeyboardPrefs.xml"
@echo .
@echo .
@echo Lancer une fois K9Mail et mettez votre adresse mail
@echo Applications par defaut dans parametres/Applications/Applis par défaut
@echo "Gestion des apps par defaut"
@echo Appli d'accueil : Lawnchair
@echo Appli de Navigateur : Vivaldi
@echo Appli de SMS : QKSMS
@echo Appli de telephone : Téléphone
@echo .
@pause
@echo .
@echo .
@echo .
@echo .
@echo .
@echo .
@echo L'installation automatisee est finie.
@echo .
@echo .
@echo .
@echo .
@echo .
@echo .



@pause
