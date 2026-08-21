#!/usr/bin/env bash
# Verifica que todas las variables declaradas en .env.example estén definidas
# en el archivo .env antes de levantar el entorno.

set -euo pipefail

PLANTILLA="${1:-.env.example}"
ARCHIVO="${2:-.env}"

if [ ! -f "$PLANTILLA" ]; then
  echo "ERROR: no se encontró la plantilla $PLANTILLA"
  exit 1
fi

if [ ! -f "$ARCHIVO" ]; then
  echo "ERROR: no se encontró el archivo $ARCHIVO"
  echo "Sugerencia: copiar $PLANTILLA como $ARCHIVO y completar los valores."
  exit 1
fi

FALTANTES=0

while IFS= read -r LINEA; do
  case "$LINEA" in
    ''|\#*) continue ;;
  esac

  CLAVE="${LINEA%%=*}"
  CLAVE="$(echo "$CLAVE" | tr -d '[:space:]')"
  [ -z "$CLAVE" ] && continue

  if ! grep -qE "^${CLAVE}=" "$ARCHIVO"; then
    echo "FALTA     | $CLAVE"
    FALTANTES=$((FALTANTES+1))
  else
    VALOR="$(grep -E "^${CLAVE}=" "$ARCHIVO" | head -1 | cut -d'=' -f2-)"
    if [ "$VALOR" = "CAMBIAR_ESTE_VALOR" ]; then
      echo "SIN VALOR | $CLAVE conserva el valor por defecto de la plantilla"
      FALTANTES=$((FALTANTES+1))
    else
      echo "OK        | $CLAVE"
    fi
  fi
done < "$PLANTILLA"

echo ""
if [ "$FALTANTES" -gt 0 ]; then
  echo "Validación fallida: $FALTANTES variable(s) sin definir o sin valor real."
  exit 1
fi

echo "Validación exitosa: todas las variables requeridas están definidas."