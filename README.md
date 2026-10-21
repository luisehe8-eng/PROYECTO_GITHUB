# NodePulse ⚡ - Plataforma de Automatización de Flujos de Trabajo con IA (Estilo n8n)

> Landing page moderna, interactiva y de alto impacto para una plataforma de automatización de flujos de trabajo de código abierto similar a **n8n**, **Make** y **Zapier**.

![NodePulse Preview](https://raw.githubusercontent.com/lucide-icons/lucide/main/icons/network.svg)

---

## 🌟 Características Destacadas de la Landing

- 🚀 **Canvas Interactivo en Vivo**: Un simulador de editor de nodos estilo n8n en tiempo real. Al hacer clic en **"▶ Ejecutar Flujo"**, los paquetes de datos viajan por curvas Bézier iluminadas entre los nodos (*Webhook → Agente IA → Router → Slack / PostgreSQL*), cambiando estados y actualizando el inspector JSON en tiempo real.
- 🤖 **Orquestación de Agentes IA**: Sección dedicada a agentes autónomos, RAG (Retrieval-Augmented Generation), memoria vectorial y tool calling con Claude 3.5 Sonnet, GPT-4o y Gemini.
- ⚡ **Catálogo Interactivo de +500 Integraciones**: Incluye un buscador en tiempo real para filtrar herramientas (OpenAI, Slack, PostgreSQL, GitHub, Notion, Airtable, Stripe, etc.).
- 📦 **Plantillas Prehechas por Categoría**: Filtros interactivos para flujos de Agentes IA, DevOps, Ventas y Marketing con modal de previsualización.
- 🖥️ **Filosofía Self-Hosted & Privacidad**: Snippets de código copiables con un solo clic para `docker run` y `docker-compose.yml`.
- 📊 **Tabla Comparativa**: Análisis punto por punto de **NodePulse vs Zapier vs Make** (costos, privacidad, código JS/Python nativo, límites de ejecución).
- 🏷️ **Calculadora de Precios**: Selector interactivo de facturación Mensual vs Anual con descuento automático del 20%.
- ❓ **Sección FAQ Desplegable**: Acordeón interactivo con respuestas clave sobre licenciamiento fair-code, migración y requisitos de servidor.
- 🎨 **Diseño Visual Ultra-Moderno**: Dark mode nativo con acentos naranja neón (estilo n8n), tipografías *Plus Jakarta Sans* y *JetBrains Mono*, animaciones fluidas y notificaciones Toast flotantes.

---

## 📂 Estructura del Proyecto

```text
├── index.html       # Landing page completa, autocontenida y lista para producción
└── README.md        # Documentación del proyecto
```

---

## 🚀 ¿Cómo Ejecutar y Visualizar la Landing?

No requiere instalación de Node.js ni compilación previa; utiliza librerías optimizadas vía CDN (Tailwind CSS, Lucide Icons, Canvas Confetti).

### Opción 1: Abrir directamente en el navegador
Haz doble clic sobre el archivo `index.html` o arrástralo a cualquier navegador web (Chrome, Edge, Firefox, Safari).

### Opción 2: Usar un servidor local ligero
Si utilizas Visual Studio Code:
1. Instala la extensión **Live Server**.
2. Haz clic derecho en `index.html` y selecciona **"Open with Live Server"**.

O mediante Python en tu terminal:
```bash
python -m http.server 3000
```
Y abre `http://localhost:3000` en tu navegador.

---

## 🌐 Publicación en 1 Clic (Despliegue Gratis)

### GitHub Pages:
1. Sube este repositorio a tu cuenta de GitHub.
2. Ve a **Settings** > **Pages**.
3. En **Branch**, selecciona `main` y la carpeta `/ (root)`.
4. Haz clic en **Save** y tu landing estará online en `https://tu-usuario.github.io/tu-repo/`.

### Vercel / Netlify:
- Simplemente arrastra la carpeta a [app.netlify.com/drop](https://app.netlify.com/drop) o impórtala en [vercel.com](https://vercel.com). Se publicará al instante sin necesidad de configurar ningún script de build.

---

## 🛠️ Tecnologías Utilizadas

- **HTML5 & CSS3 semántico**
- **Tailwind CSS 3.x** (vía CDN para máxima portabilidad)
- **Lucide Icons**
- **Canvas Confetti**
- **Google Fonts** (*Plus Jakarta Sans* & *JetBrains Mono*)
- **Vanilla JavaScript moderno** (sin dependencias pesadas, ultra rápido)

---

## 📄 Licencia

Este proyecto es de código abierto y está disponible bajo la licencia [MIT](LICENSE).
