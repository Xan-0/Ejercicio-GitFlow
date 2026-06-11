#!/bin/bash

# Script para generar evidencia automática de la práctica Git-flow.
# Debe ejecutarse desde la carpeta raíz del repositorio.

OUTPUT="evidencia_gitflow.txt"

{
  echo "========================================"
  echo "EVIDENCIA PRÁCTICA GIT-FLOW"
  echo "========================================"
  echo ""

  echo "Nombre del estudiante:"
  echo "Escribir aquí el nombre"
  echo ""

  echo "Fecha de generación:"
  date
  echo ""

  echo "========================================"
  echo "1. RAMA ACTUAL"
  echo "========================================"
  git branch --show-current
  echo ""

  echo "========================================"
  echo "2. RAMAS LOCALES Y REMOTAS"
  echo "========================================"
  git branch -a
  echo ""

  echo "========================================"
  echo "3. ETIQUETAS"
  echo "========================================"
  git tag
  echo ""

  echo "========================================"
  echo "4. HISTORIAL GRÁFICO"
  echo "========================================"
  git log --oneline --graph --all --decorate
  echo ""

  echo "========================================"
  echo "5. COMMITS REALIZADOS"
  echo "========================================"
  git log --oneline --all
  echo ""

  echo "========================================"
  echo "6. ESTADO DEL REPOSITORIO"
  echo "========================================"
  git status
  echo ""

  echo "========================================"
  echo "7. RESULTADO DE LAS PRUEBAS"
  echo "========================================"
  npm test
  echo ""

  echo "========================================"
  echo "FIN DE LA EVIDENCIA"
  echo "========================================"
} > "$OUTPUT" 2>&1

echo "Archivo $OUTPUT generado correctamente."
