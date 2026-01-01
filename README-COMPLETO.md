# Sitio Web HappyKids - Jardín Infantil 🎨

Este es un sitio web completo para un jardín infantil, basado en el tema HappyKids de WordPress.

**✅ LISTO PARA GITHUB PAGES** - El sitio funciona 100% offline con todos los recursos locales.

---

## 📂 Archivos Principales

- **`happykids.html`** - Página principal del sitio (con rutas locales)
- **`index.html`** - Redirige automáticamente a happykids.html
- **`GUIA-GITHUB-PAGES.md`** - Guía paso a paso para publicar en GitHub Pages
- **`GUIA-EDICION.md`** - Guía para editar contenido del sitio

---

## 🚀 Uso Local

### Opción 1: Abrir Directamente
1. Haz doble clic en **`index.html`**
2. Se abrirá en tu navegador predeterminado

### Opción 2: Con Servidor Local (Opcional)
1. Haz doble clic en **`INICIAR-SERVIDOR.bat`**
2. Se abrirá automáticamente en `http://localhost:8000`
3. Para detener el servidor, cierra la ventana de comandos

---

## 🌐 Publicar en Internet

Tienes **DOS opciones** para publicar gratis:

### Opción 1: Netlify (MÁS FÁCIL) ⚡

Sigue la guía completa en **`GUIA-NETLIFY.md`**

**Resumen rápido:**
1. Ejecuta: `.\PREPARAR-NETLIFY.ps1` (crea ZIP automáticamente)
2. Ve a [netlify.com](https://www.netlify.com) y crea cuenta
3. Arrastra el ZIP a Netlify
4. ¡Listo! Tu sitio estará en `https://tu-nombre.netlify.app`

**Ventajas**: Súper fácil (drag & drop), formularios gratis, despliegue en segundos

### Opción 2: GitHub Pages

Sigue la guía completa en **`GUIA-GITHUB-PAGES.md`**

**Resumen rápido:**
1. Crea una cuenta en [GitHub](https://github.com)
2. Crea un repositorio público
3. Sube los archivos con Git
4. Activa GitHub Pages en Settings → Pages
5. Tu sitio estará en `https://tuusuario.github.io/infantil/`

**Ventajas**: Integración con Git, control de versiones, comunidad grande

---

## ✏️ Editar el Sitio

Consulta **`GUIA-EDICION.md`** para:
- Ubicación exacta de cada sección (números de línea)
- Cómo cambiar textos, títulos, descripciones
- Cómo cambiar imágenes
- Cómo cambiar colores y estilos
- Ejemplos paso a paso

---

## 📁 Estructura de Archivos

```
infantil/
├── happykids.html              ← Página principal (EDITAR AQUÍ)
├── index.html                  ← Redirige a happykids.html
├── README.md                   ← Este archivo
├── GUIA-EDICION.md             ← Guía para editar contenido
├── GUIA-GITHUB-PAGES.md        ← Guía para publicar online
├── .gitignore                  ← Archivos que Git debe ignorar
├── css/                        ← 20 archivos CSS (estilos)
│   ├── happykids-styles.css
│   ├── font-awesome.min.css
│   ├── elementor-frontend.min.css
│   └── ...
├── js/                         ← 41 archivos JavaScript
│   ├── jquery.min.js
│   ├── owl.carousel.js
│   ├── revolution-rs6.min.js
│   └── ...
├── assets/
│   ├── images/                 ← 54 imágenes del sitio
│   │   ├── logo.png
│   │   ├── slide-1.jpg
│   │   ├── project-1.jpg
│   │   └── ...
│   └── icons/                  ← 6 iconos (horse, abc, snake)
│       ├── icon_horse.png
│       ├── icon_abc.png
│       └── icon_snake.png
└── includes/                   ← Carpetas de referencia (no usadas actualmente)
```

---

## 🛠️ Tecnologías Usadas

- **HTML5** - Estructura del sitio
- **CSS3** - Estilos y animaciones
- **JavaScript** - Interactividad
- **jQuery** - Manipulación DOM
- **Revolution Slider** - Slider de la página principal
- **Elementor** - Constructor de páginas
- **Owl Carousel** - Carruseles de proyectos y posts
- **PrettyPhoto** - Lightbox para imágenes
- **Font Awesome** - Iconos vectoriales
- **Google Fonts** - Fuentes: Lobster Two (títulos), Lato (textos)

---

## ✨ Características

- ✅ **100% Offline** - Todos los recursos están locales (CSS, JS, imágenes)
- ✅ **Responsive** - Se adapta a móviles, tablets y escritorio
- ✅ **Sin Dependencias Externas** - No necesita conexión a internet
- ✅ **Listo para GitHub Pages** - Configurado para publicación gratuita
- ✅ **Optimizado** - Imágenes y scripts minificados
- ✅ **Compatible** - Funciona en Chrome, Firefox, Safari, Edge

---

## 📝 Notas Importantes

- **NO elimines** las carpetas `css/`, `js/`, o `assets/` - el sitio dejará de funcionar
- **Antes de editar**, haz una copia de `happykids.html` como respaldo
- **Rutas locales**: Todas las rutas ya están actualizadas (`css/...`, `js/...`, `assets/...`)
- **Imágenes**: Si cambias imágenes, usa los mismos nombres de archivo o actualiza el HTML

---

## 🆘 Solución de Problemas

### El sitio se ve sin estilos:
- Asegúrate de que las carpetas `css/`, `js/`, y `assets/` estén en la misma ubicación que `happykids.html`
- Verifica que no hayas movido archivos fuera de sus carpetas

### Las imágenes no cargan:
- Revisa que la carpeta `assets/images/` contenga todas las imágenes
- Los nombres de archivo deben ser exactamente iguales (mayúsculas/minúsculas importan)

### El slider no funciona:
- Asegúrate de que la carpeta `js/` contenga todos los archivos JavaScript
- Abre la Consola del navegador (F12) y busca errores

---

## 📞 Recursos Adicionales

- **Documentación de HappyKids**: [https://happykids.cwsthemes.com/](https://happykids.cwsthemes.com/)
- **GitHub Pages**: [https://pages.github.com/](https://pages.github.com/)
- **Guía de HTML**: [https://www.w3schools.com/html/](https://www.w3schools.com/html/)
- **Guía de CSS**: [https://www.w3schools.com/css/](https://www.w3schools.com/css/)

---

## 📄 Licencia

Este sitio está basado en el tema HappyKids de CWS Themes. Todos los recursos visuales (imágenes, iconos) son de demostración y deben ser reemplazados por contenido propio antes de uso comercial.

---

**¡Listo para usar!** 🎉

1. **Local**: Abre `index.html` en tu navegador
2. **Online**: Sigue `GUIA-GITHUB-PAGES.md` para publicar
3. **Editar**: Consulta `GUIA-EDICION.md` para personalizar
