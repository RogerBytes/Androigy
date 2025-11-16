#!/bin/bash

OUT=$(mktemp -d)

# Lire le JSON et extraire la liste des paquets
packages=$(jq -c '.packages[]' DATA/fdroid-packages.json)

while IFS= read -r pkg; do
  pkg_id=$(echo "$pkg" | jq -r '.id')
  pkg_name=$(echo "$pkg" | jq -r '.name')
  echo "==> Traitement : $pkg_name ($pkg_id)"

  # Essayer via l'API
  json=$(curl -s "https://f-droid.org/api/v1/packages/$pkg_id")
  apk_name=$(echo "$json" | jq -r '.packages[-1].apkName')

  # Si rien via l'API, tenter le scraping HTML
  if [[ -z "$apk_name" || "$apk_name" == "null" ]]; then
    echo "  !! Aucun APK trouvé via l'API pour $pkg_id, tentative scraping HTML"
    page=$(curl -s "https://f-droid.org/packages/$pkg_id/")
    apk_name=$(echo "$page" | grep -Eo '/repo/[^"]+\.apk' | head -n 1 | sed 's|/repo/||')
    if [[ -z "$apk_name" ]]; then
      echo "  !! Impossible de trouver un APK pour $pkg_id"
      continue
    fi
  fi

  url="https://f-droid.org/repo/$apk_name"
  dest="$OUT/$(basename "$apk_name")"

  echo "  Téléchargement : $url"
  curl -L "$url" -o "$dest"

  echo "  → OK : $dest"
  adb install -r "$dest"
  rm "$dest"
  echo "  → installation de $dest terminée."
done <<< "$packages"

rm -rf "$OUT"
echo "→ Tous les fichiers temporaires ont été supprimés."

