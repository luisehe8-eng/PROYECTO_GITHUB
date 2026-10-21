#!/usr/bin/env bash
# ==============================================================================
# Script para inicializar y subir el proyecto a GitHub
# ==============================================================================
# Uso:
#   chmod +x deploy-github.sh
#   ./deploy-github.sh "https://github.com/TU-USUARIO/TU-REPOSITORIO.git"
# ==============================================================================

set -e

REPO_URL="$1"
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$PROJECT_DIR"

echo "⚡ ========================================================"
echo "⚡       Subir NodePulse Landing a GitHub                 "
echo "⚡ ========================================================"

# Si no tiene Git inicializado
if [ ! -d ".git" ]; then
    echo "📦 Inicializando repositorio Git..."
    git init
    git branch -M main
fi

# Añadir archivos y crear commit
echo "📝 Preparando commit..."
git add .
git commit -m "feat: landing page estilo n8n con editor de nodos interactivo y agentes IA" || echo "ℹ️  Sin cambios pendientes por commitear."

# Si se pasó la URL del repositorio remoto
if [ -n "$REPO_URL" ]; then
    echo "🔗 Vinculando repositorio remoto: $REPO_URL"
    git remote remove origin 2>/dev/null || true
    git remote add origin "$REPO_URL"
    echo "🚀 Subiendo a GitHub (rama main)..."
    git push -u origin main
    echo "✅ ¡Proyecto subido con éxito!"
else
    echo ""
    echo "ℹ️  Para subirlo a tu repositorio en GitHub ejecuta:"
    echo "   git remote add origin https://github.com/TU-USUARIO/TU-REPOSITORIO.git"
    echo "   git push -u origin main"
fi
