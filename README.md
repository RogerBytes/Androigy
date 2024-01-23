# Androigy

<figure>
  <img src="./DATA/preview.gif" alt="Preview">
  <figcaption></figcaption>
</figure>

Ce script est conçu pour automatiser le processus de personnalisation de Android en installant une suite complète de logiciels open source. De manière simple, les utilisateurs peuvent transformer leur système Android en un environnement de travail puissant et personnalisé, idéal pour les développeurs, les créateurs de contenu et (bien évidemment) les utilisateurs quotidiens.

## Présentation

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

### Fonctionnalités

- **Installation Automatique** : Déployez votre environnement personnalisé sans intervention manuelle.
- **Suite Complète** : Le script inclut des logiciels pour le développement, la bureautique, le multimédia, et plus encore.
- **Open Source** : Tous les logiciels installés sont open source, garantissant transparence et respect de la vie privée.
- **Thème Préconfiguré** : Profitez d'un thème sobre et fonctionnel, conçu pour une expérience utilisateur optimale.

### Liste de logiciels

Une liste non exhaustive des logiciels inclus dans ce script :

- **Bureautique**: LibreOffice
- **Multimédia**: Kodi
- **Internet**: Vivaldi
- ...et beaucoup d'autres !

### Contributions

Les contributions sont les bienvenues ! Si vous avez des suggestions ou des améliorations, n'hésitez pas à soumettre une pull request ou à ouvrir une issue.

### License

Distribué sous la licence GPLv3. Voir `LICENSE` pour plus d'informations.

</details>

---

## Prérequis

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

Il est recommandé d'utiliser Lineage mais tout version d'android A11+ Arm64 devrait fonctionner.
Voici les prérequis pour pouvoir installer Androigy.

- Avoir installé les outils adb sur votre ordinateur
- Avoir activé les options développeur sur votre appareil android
- Avoir activé le debug usb dans les options dévellopeur de votre appareil android
- Avoir son smartphone connecté à l'ordinateur en USB
- Bloquer Google Protect dans les options du play store

### Téléchargement

Depuis le terminal, on télécharge [la dernière release](https://github.com/RogerBytes/Androigy/releases/latest), la décompresse et on entre dans le dossier :

```bash
latest_url=$(curl -sL -w '%{url_effective}\n' https://github.com/RogerBytes/Androigy/releases/latest -o /dev/null)
download_url="${latest_url/tag\/v/download/v}/Androigy-${latest_url##*/}.tar.gz"
wget $download_url
file=$(find . -name 'Androigy*.tar.gz' -print -quit)
tar -xvf "$file"
folder_name=$(tar -tf "$file" | head -1 | cut -f1 -d"/")
rm $file
cd $folder_name
```

</details>

---

## Installation

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

### Installation scriptée

Dans le terminal, dans le dossier extrait depuis l'archive (l'on y est déjà après avoir fait les prérequis)

```bash
./install.sh
```

### Installations manuelles

#### Grub Csutomizer

Si Dual-Boot seulement !
Dans un terminal :

```bash
grub-customizer
```

Dans Grub customizer mettez "calmgrub" comme thème avec l’icône de "+" dans l'onglet "apparence" (mettez calmgrub.tar.gz qui se trouve dans /racine du système) faites "appliquer" et enregistrez.

#### Gestionnaire de mises à jour

Dans "Gestionnaire de mises à jour" allez dans "Édition/Préférences", allez dans l'onglet "Paquet" et cochez les maj cinnamon et flatpak, ensuite allez dans l'onglet "Automatisation" et cochez tout sauf le dernier "Retirer les noyaux obsolètes et leurs dépendances".

#### Dual Boot avec Windows

Si Dual-Boot seulement !

Dans un terminal :

```bash
gnome-disks
```

Trouvez le disque où est installé Windows, puis chez la partition NTFS où il se trouve, sélectionnez-le puis cliquez
sur la petite roue de paramétrage. Choisissez l'option "modifier les options de montage",
Décochez "Réglages par défaut de la session" et décochez tout puis faîtes "Valider.

#### Fontbase

Dans fontbase cliquez sur "..." et dans
Pour "Root Folder" choisissez le dossier "Local"

#### pCloud

Lancer pcloud dans `~/Local/Ressources/apimages`

Ouvrez Jdownloader et depuis fichier faites import
cliquez sur telechargement et lancer l'import du fichier JD2-Dark-Theme.jd2backup
à la fin d'install supprimez JD2-Dark-Theme.jd2backup

#### LanguageTools pour LibreOffice

Téléchargez l'extension via wget (dl direct)

```bash
wget https://languagetool.org/download/LanguageTool-stable.oxt
```

Dans LibreOffice allez dans "Outils/Gestionnaire des extensions..."
Puis "Ajouter" et choisir "LanguageTool-stable.oxt",

Dans LibreOffice aller dans "Outils/Options" (ou 'Alt+F12'), puis :
"Paramètres linguistiques" - "Linguistique" et allez dans l'encart "Modules linguistiques disponibles", puis : - Décochez "Vérificateur orthographique Hunspell" - "Langues" : - Interface utilisateur = "Français (France)" - Paramètres locaux = "Français (France)" - Monnaie par défaut = "EUR € Français (France)" - Occidental = "Français (France)" - décochez "Asiatique"

Dans votre dossier utilisateur se trouve le dossier Mintage : vous pouvez maintenant le supprimer !  
Une documentation avec plein de conseils et astuces se trouve dans `~/Local/Documentation`.

#### Derniers réglages

Sinon sur votre bureau 'clic droit' > personnaliser :
décochez "ajustement automatique", puis cliquez en bas sur "Paramètre du bureau"
Décochez le poste de travail et cochez le dossier personnel

Lancez Xpad une première fois depuis le menu.

Clic droit sur l’icône "préférences" dans l'onglet "au démarrage, cochez "Démarrer Xpad automatiquement après l'ouverture de session".

Votre installation est terminée !

</details>

---

## Todo

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

1. Faire un script de customisation pour une nouvelle session.
2. Corriger le lien vers trousseau du navigateur il faut mettre `vivaldi://password-manager/passwords`.
3. Faire une application simple pour changer de runtime Java.
4. Le thème root souris au propre (au lieu de mon swap manuel) est `sudo update-alternatives --config x-cursor-theme`.
5. Ajouter gestionnaire apimage [VIA CE PPA](https://launchpad.net/~appimagelauncher-team/+archive/ubuntu/stable) de [AppImageLauncher](https://github.com/TheAssassin/AppImageLauncher).
6. Voir pour faire installation entièrement auto de jackd libdvd(et son libdvdcss).
7. Créer une version light pour user simple.
8. Faire la creation de ~/Jeux/Lutris/Wineprefix/
9. Faire le support natif du client JD2 avec vivaldi.
10. Faire une importation auto du réglage flatpak de jd2 avec un wget et tar xz.
11. Faire une importation auto du réglage lutris de jd2 avec un wget et tar xz.
12. Mettre à jour les options de nemo avec tous les chemin dans les raccourcis dans la navbar

</details>

---

## Dernier rapport

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

### Problèmes

Fixé - Il y a un souci avec "linuxmirrors.ir" (source de logiciel), -> j'ai édité le pré requis

### Observations

Après qt5ct (juste après game feral mode et powerlevel de zsh) Système demande à relancer cinnamon. Et dans le shell il demande le mdp dans le terminal sans rien faire derrière.

#### Les paquets que je remets manuellement (afin de sauter une étape)

- blueman
- caffeine

-> plus de pb avec transmission-gtk

#### Les appli flatpak sans support de thème

- Ciano - Compression et conversion de fichiers audio et vidéo
- Mousai - io.github.seadve.Mousai
- Téléchargeur de vidéo - com.github.unrud.VideoDownloader

</details>

---

## Auteurs

- [Harry RICHMOND](https://github.com/RogerBytes)
