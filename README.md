# HappyKids - Sitio Web

## 📁 Estructura del Proyecto

```
infantil/
├── index.html                 # Página de inicio (redirige a happykids.html)
├── happykids.html            # ⭐ PÁGINA PRINCIPAL - Ábrela en el navegador
├── happykids-backup.html     # Respaldo del original
├── includes/                 # (Carpetas vacías para futuro)
├── css/
├── js/
└── assets/
```

## 🚀 Cómo Usar

### **📌 IMPORTANTE: Abre `happykids.html` directamente en tu navegador**

1. Haz doble clic en **`happykids.html`**
2. O arrastra el archivo a tu navegador
3. La página se verá EXACTAMENTE igual al demo original

> 💡 **Nota:** El archivo `index.html` solo redirige a `happykids.html`

## ✏️ Cómo Editar el Contenido

### Para cambiar textos, imágenes o cualquier contenido:

1. **Abre `happykids.html` con un editor de código** (VS Code, Notepad++, etc.)

2. **Busca el texto que quieres cambiar**. Por ejemplo:
   - Para cambiar "Playground" → Busca: `<h3 class="widget-title">Playground</h3>`
   - Para cambiar "Entertainment" → Busca: `<h3 class="widget-title">Entertainment</h3>`
   - Para cambiar textos del slider → Busca: `kids-slider-header`

3. **Guarda los cambios** y recarga la página en el navegador

### Secciones importantes para editar:

#### 🎯 **Íconos y Beneficios** (Playground, Entertainment, Environment)
Busca: `<div id="cws_benefits-1"` hasta `</div>` (líneas ~1070-1080)

#### 🎨 **Slider Principal** (5 slides)
Busca: `<!-- START Homepage slider REVOLUTION SLIDER` (líneas ~900-1000)

#### 📝 **Recent Projects** (Galería de proyectos)
Busca: `<div class="recent_projects">` y `<h3 class="section-title">Recent Projects</h3>`

#### 📰 **Recent Posts** (Últimas publicaciones)
Busca: `<div class="recent_projects">` y `<h3 class="section-title">Recent Posts</h3>`

#### 👣 **Footer** (Pie de página)
Busca: `<div class="kids_bottom_container footer">` (líneas ~1700+)

## 🎨 Cómo Cambiar Colores

Los colores se definen en la sección `<style>` del archivo. Busca estas variables:

- **Color principal** (azul): `#8fc0ea` → Busca y reemplaza por tu color
- **Color secundario** (arena): `#fcf5d5`
- **Color borde** (beige): `#fee6b4`
- **Color footer/menú** (azul oscuro): `#3185cb`
- **Color hover** (naranja): `#ff633c`

## 🖼️ Cómo Cambiar Imágenes

Las imágenes están alojadas en: `https://happykids.cwsthemes.com/wp-content/uploads/`

Para usar tus propias imágenes:
1. Copia tus imágenes a la carpeta `assets/images/`
2. Busca la URL de la imagen que quieres cambiar
3. Reemplaza la URL completa por la ruta local: `assets/images/tu-imagen.jpg`

## 📱 Responsive

La página es completamente responsive y se adapta a:
- 📱 Móviles (hasta 767px)
- 📱 Tablets (768px - 1024px)
- 💻 Escritorio (1025px+)

## ⚠️ Importante

- **NO borres** `happykids.html` - es el archivo original completo
- **Haz respaldos** antes de hacer cambios grandes
- **Prueba en navegador** después de cada cambio

## 🛠️ Próximos Pasos (Preparar para GitHub Pages)

Para publicar en GitHub Pages necesitarás:
1. Descargar todas las imágenes localmente
2. Descargar todos los CSS y JS localmente
3. Actualizar todas las rutas de `https://...` a rutas locales
4. Subir todo a un repositorio de GitHub

¿Quieres que te ayude con esto?

## 📞 Ayuda

Si necesitas ayuda para editar algo específico, solo pregunta:
- "¿Cómo cambio el texto del slider?"
- "¿Cómo cambio los colores?"
- "¿Cómo agrego mi logo?"
- etc.
