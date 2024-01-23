# Androigy

<figure>
  <img src="./DATA/preview.gif" alt="Preview" style="height:50%;">
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

1. Faire la todolist
2. Options de Kodi ecc

</details>

---

## Dernier rapport

<details style="background-color: #222222; border: 1px solid #ccc; border-radius: 4px;">
<summary>Afficher/Masquer</summary>

### Problèmes

Aucun

### Observations

RAS

</details>

---

## Auteurs

- [Harry RICHMOND](https://github.com/RogerBytes)
