#!/usr/bin/env bash
# ==============================================================================
# NodePulse - Script de Desarrollo Local y Servidor Web
# ==============================================================================
# Uso:
#   chmod +x start.sh
#   ./start.sh
# ==============================================================================

set -e

PORT=${1:-3000}
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$PROJECT_DIR"

echo "⚡ ========================================================"
echo "⚡       Lanzando NodePulse Landing (Estilo n8n)          "
echo "⚡ ========================================================"
echo "📁 Directorio: $PROJECT_DIR"
echo "🌐 Puerto:     http://localhost:$PORT"
echo "--------------------------------------------------------"

# Función para abrir automáticamente el navegador según el sistema operativo
open_browser() {
    local url="$1"
    sleep 1.2
    if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
        start "$url" 2>/dev/null || cmd.exe /c start "$url" 2>/dev/null || true
    elif command -v xdg-open >/dev/null 2>&1; then
        xdg-open "$url" >/dev/null 2>&1 &
    elif command -v open >/dev/null 2>&1; then
        open "$url" >/dev/null 2>&1 &
    elif command -v powershell.exe >/dev/null 2>&1; then
        powershell.exe -c "Start-Process '$url'" 2>/dev/null || true
    fi
}

# Detectar el mejor servidor disponible
if command -v python3 >/dev/null 2>&1; then
    echo "🚀 Servidor detectado: Python 3"
    echo "💡 Presiona CTRL + C para detener el servidor"
    open_browser "http://localhost:$PORT" &
    python3 -m http.server "$PORT"
elif command -v python >/dev/null 2>&1; then
    echo "🚀 Servidor detectado: Python"
    echo "💡 Presiona CTRL + C para detener el servidor"
    open_browser "http://localhost:$PORT" &
    python -m http.server "$PORT"
elif command -v npx >/dev/null 2>&1; then
    echo "🚀 Servidor detectado: Node (npx serve)"
    echo "💡 Presiona CTRL + C para detener el servidor"
    npx -y serve -l "$PORT" .
elif command -v php >/dev/null 2>&1; then
    echo "🚀 Servidor detectado: PHP Built-in Server"
    echo "💡 Presiona CTRL + C para detener el servidor"
    open_browser "http://localhost:$PORT" &
    php -S "localhost:$PORT"
else
    echo "⚠️  No se encontró Python, Node.js ni PHP instalados."
    echo "🌐 Abriendo el archivo index.html directamente en tu navegador por defecto..."
    open_browser "index.html"
fi
