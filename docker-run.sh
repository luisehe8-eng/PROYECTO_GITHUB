#!/usr/bin/env bash
# ==============================================================================
# Servir la Landing Page de Visionarius con Docker y Nginx
# ==============================================================================
# Uso:
#   chmod +x docker-run.sh
#   ./docker-run.sh
# ==============================================================================

PORT=8080
CONTAINER_NAME="visionarius-landing"
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🐳 Levantando servidor Nginx para Visionarius en Docker..."

# Detener contenedor previo si existe
docker rm -f "$CONTAINER_NAME" 2>/dev/null || true

# Iniciar contenedor Nginx montando la carpeta actual
docker run -d \
  --name "$CONTAINER_NAME" \
  -p "$PORT:80" \
  -v "$PROJECT_DIR":/usr/share/nginx/html:ro \
  nginx:alpine

echo "✅ Visionarius en ejecución en: http://localhost:$PORT"

# Abrir navegador si es posible
if command -v start >/dev/null 2>&1; then
    start "http://localhost:$PORT"
elif command -v xdg-open >/dev/null 2>&1; then
    xdg-open "http://localhost:$PORT" &
fi
