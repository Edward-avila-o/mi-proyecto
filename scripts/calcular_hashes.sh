#!/usr/bin/env bash
# Calcula el SHA-256 de cada archivo de una carpeta y lo guarda en hashes_sha256.txt
# Uso: bash calcular_hashes.sh <carpeta>
set -euo pipefail
carpeta="${1:-.}"
salida="hashes_sha256.txt"
find "$carpeta" -type f ! -name "$salida" -print0 | sort -z | xargs -0 sha256sum > "$salida"
echo "Hashes guardados en $salida ($(wc -l < "$salida") archivos)"
