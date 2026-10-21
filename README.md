# Visionarius ⚡ - Plataforma de Automatización de Flujos de Trabajo con IA

> Landing page moderna, interactiva y de alto impacto para **Visionarius**, la plataforma de automatización de flujos de trabajo de código abierto con branding **Azul Eléctrico / Cyber Blue**, orquestación de agentes autónomos y compatible con flujos estilo **n8n**, **Make** y **Zapier**.

![Visionarius Preview](https://raw.githubusercontent.com/lucide-icons/lucide/main/icons/aperture.svg)

---

## 🌟 Identidad y Características de Visionarius

- 🔵 **Branding & Estética Azul Eléctrico**: Paleta tecnológica premium en azules reales (`#2563eb`), cian (`#06b6d4`), zafiro y fondos oscuros profundos (`#060913`).
- 🚀 **Canvas Interactivo en Vivo**: Simulador de editor de nodos en tiempo real. Al hacer clic en **"▶ Ejecutar Flujo"**, los paquetes de datos viajan por curvas Bézier iluminadas en azul y cian entre los nodos (*Webhook → Agente IA → Router → Slack / PostgreSQL*), cambiando estados y actualizando el inspector JSON en tiempo real.
- 🤖 **Orquestación de Agentes IA**: Sección dedicada a agentes autónomos, RAG (Retrieval-Augmented Generation), memoria vectorial y tool calling con Claude 3.5 Sonnet, GPT-4o y DeepSeek-V3.
- ⚡ **Catálogo Interactivo de +500 Integraciones**: Incluye un buscador en tiempo real para filtrar herramientas (OpenAI, Slack, PostgreSQL, GitHub, Notion, Airtable, Stripe, etc.).
- 📦 **Plantillas Prehechas por Categoría**: Filtros interactivos para flujos de Agentes IA, DevOps, Ventas y Marketing con modal de previsualización.
- 🖥️ **Filosofía Self-Hosted & Privacidad**: Snippets de código copiables con un solo clic para `docker run` y `docker-compose.yml` de Visionarius.
- 📊 **Tabla Comparativa**: Análisis punto por punto de **Visionarius vs Zapier vs Make** (costos, privacidad, código JS/Python nativo, límites de ejecución).
- 🏷️ **Calculadora de Precios**: Selector interactivo de facturación Mensual vs Anual con descuento automático del 20%.
- ❓ **Sección FAQ Desplegable**: Acordeón interactivo con respuestas clave sobre licenciamiento fair-code, migración y requisitos de servidor.

---

## 📂 Estructura del Proyecto

```text
├── index.html          # Landing page de Visionarius completa, autocontenida y lista para producción
├── README.md           # Documentación del proyecto
├── start.sh            # Script Bash para desarrollo y servidor local automático
├── deploy-github.sh    # Script Bash para subir a GitHub en 1 clic
└── docker-run.sh       # Script Bash para correr en Docker con Nginx
```

---

## 🚀 ¿Cómo Ejecutar y Visualizar la Landing?

No requiere compilación previa; utiliza librerías optimizadas vía CDN (Tailwind CSS, Lucide Icons, Canvas Confetti).

### Opción 1: Con el script Bash incluido
```bash
chmod +x start.sh
./start.sh
```
Abre automáticamente `http://localhost:3000` en tu navegador.

### Opción 2: Abrir directamente en el navegador
Haz doble clic sobre el archivo `index.html` o arrástralo a cualquier navegador web (Chrome, Edge, Firefox, Safari).

### Opción 3: Desplegar con Docker
```bash
chmod +x docker-run.sh
./docker-run.sh
```
Inicia un contenedor de Nginx en `http://localhost:8080`.

---

## 🌐 Publicación en 1 Clic (Despliegue Gratis)

### GitHub Pages:
1. Sube este repositorio a tu cuenta de GitHub con `./deploy-github.sh "URL_DE_TU_REPO"`.
2. Ve a **Settings** > **Pages**.
3. En **Branch**, selecciona `main` y la carpeta `/ (root)`.
4. Haz clic en **Save** y Visionarius estará online en `https://tu-usuario.github.io/tu-repo/`.

### Vercel / Netlify:
- Arrastra la carpeta a [app.netlify.com/drop](https://app.netlify.com/drop) o impórtala en [vercel.com](https://vercel.com).

---

## 🛠️ Tecnologías

- **HTML5 & CSS3 semántico**
- **Tailwind CSS 3.x** (paleta personalizada Visionarius Blue)
- **Lucide Icons**
- **Canvas Confetti**
- **Google Fonts** (*Plus Jakarta Sans* & *JetBrains Mono*)
- **Vanilla JavaScript moderno** (sin dependencias pesadas, ultra rápido)

---

## 📄 Licencia

Este proyecto es de código abierto bajo la licencia [MIT](LICENSE).
