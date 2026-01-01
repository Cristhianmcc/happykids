# 🎨 GUÍA RÁPIDA DE EDICIÓN - HappyKids

## 🔍 Cómo Encontrar lo que Quieres Cambiar

### Método 1: Buscar por Texto Visible
Usa Ctrl+F en tu editor de código y busca el texto exacto que ves en la página.

**Ejemplo:**
- Ves en la página: "Playground"
- Busca en el código: `Playground`
- Encontrarás: `<h3 class="widget-title">Playground</h3>`

### Método 2: Buscar por Sección
Usa estos marcadores para encontrar secciones rápidamente:

## 📍 MAPA DEL CÓDIGO

### 🎯 LÍNEAS 1-100: HEAD (Estilos y Scripts)
- Líneas 1-10: Meta tags, título
- Líneas 11-70: Enlaces a CSS
- Líneas 71-100: Scripts de jQuery y WooCommerce

### 🎨 LÍNEAS 100-500: ESTILOS PERSONALIZADOS
- Líneas 100-200: Colores del tema
- Líneas 200-300: Fuentes (Lobster Two, Lato)
- Líneas 300-400: Botones y enlaces
- Líneas 400-500: Footer y menú

### 🏠 LÍNEAS 620-700: HEADER
- **Top Panel** (línea 620): Barra superior con Twitter/Social
- **Logo** (línea 655): `<div id="kids_logo_block">`
- **Menú Principal** (línea 660): `<nav id="kids_main_nav">`

### 🎞️ LÍNEAS 770-1000: SLIDER REVOLUTION
- **Slide 1** - "Unlimited Colors" (línea 800)
- **Slide 2** - "CWS Builder Inside" (línea 850)
- **Slide 3** - "One Click Demo Import" (línea 900)
- **Slide 4** - "Responsive Design" (línea 950)
- **Slide 5** - "WooCommerce Ready" (línea 980)

### 🎯 LÍNEAS 1070-1120: BENEFICIOS (Playground, Entertainment, Environment)
```html
Busca: <div id="cws_benefits-1" class="widget widget_cws_benefits">
```
- **Beneficio 1**: Playground (línea 1070)
- **Beneficio 2**: Entertainment (línea 1085)
- **Beneficio 3**: Environment (línea 1100)

### 🖼️ LÍNEAS 1150-1350: RECENT PROJECTS
```html
Busca: <h3 class="section-title">Recent Projects</h3>
```
- Galería de 7 proyectos con imágenes

### 📰 LÍNEAS 1380-1580: RECENT POSTS
```html
Busca: <h3 class="section-title">Recent Posts</h3>
```
- 3 posts con imágenes y descripciones

### 📝 LÍNEAS 1600-1700: CONTENIDO ADICIONAL
- Imagen flotante y texto
- Listas de características (3 columnas)

### 👥 LÍNEAS 1710-1800: TESTIMONIALS, GALLERY, SKILLS
- **Columna 1**: Testimonios
- **Columna 2**: Mini Gallery
- **Columna 3**: Barras de progreso (Skills)

### 👣 LÍNEAS 1820-1900: FOOTER
- **4 Columnas de Widgets**:
  1. Gallery (línea 1825)
  2. Twitter/Contact Info (línea 1830)
  3. Latest Posts (línea 1835)
  4. Calendar (línea 1840)
- **Copyright** (línea 1870)

## ✏️ EDICIONES MÁS COMUNES

### 1. Cambiar Título de la Página
```html
BUSCA (línea ~6):
<title>HappyKids &#8211; Children WordPress Theme</title>

CAMBIA A:
<title>Mi Guardería - Nombre de Mi Negocio</title>
```

### 2. Cambiar Logo
```html
BUSCA (línea ~655):
<img src='https://happykids.cwsthemes.com/.../logo_retina.png'

CAMBIA A:
<img src='assets/images/mi-logo.png'
```

### 3. Cambiar Textos del Slider
```html
BUSCA (línea ~815):
<div class="kids-slider-header">Unlimited Colors</div>

CAMBIA A:
<div class="kids-slider-header">Bienvenidos a Nuestra Guardería</div>
```

### 4. Cambiar Beneficios (Playground, Entertainment, Environment)
```html
BUSCA (línea ~1072):
<h3 class="widget-title">Playground</h3>
<aside class="text_part">Ut wisi enim ad minim veniam...</aside>

CAMBIA A:
<h3 class="widget-title">Seguridad</h3>
<aside class="text_part">Instalaciones 100% seguras para tus hijos...</aside>
```

### 5. Cambiar Colores Principales
```html
BUSCA (líneas 100-500):
#8fc0ea  →  Color principal (azul claro)
#fcf5d5  →  Color secundario (arena)
#fee6b4  →  Color bordes (beige)
#3185cb  →  Color footer/menú (azul oscuro)
#ff633c  →  Color hover (naranja)

USA CTRL+H (Reemplazar) para cambiar todos a la vez
```

### 6. Cambiar Imágenes de Projects
```html
BUSCA (línea ~1180):
<img src='https://happykids.cwsthemes.com/.../500x500_1.jpg'

CAMBIA A:
<img src='assets/images/proyecto-1.jpg'
```

### 7. Cambiar Posts del Blog
```html
BUSCA (línea ~1420):
<div class="post-title">
    <a href="...">Image Post</a>
</div>
<p>Lorem ipsum dolor sit amet...</p>

CAMBIA A:
<div class="post-title">
    <a href="...">Nuestra Nueva Actividad</a>
</div>
<p>Descripción de tu post...</p>
```

### 8. Cambiar Información del Footer
```html
BUSCA (línea ~1870):
<div class="textwidget">Copyrights: HappyKids - Children WordPress Theme</div>

CAMBIA A:
<div class="textwidget">© 2026 Mi Guardería - Todos los derechos reservados</div>
```

### 9. Cambiar Enlaces del Menú
```html
BUSCA (línea ~670):
<li class="menu-item">
    <a href="https://happykids.cwsthemes.com/">Home</a>
</li>

CAMBIA A:
<li class="menu-item">
    <a href="index.html">Inicio</a>
</li>
```

### 10. Cambiar Íconos de Redes Sociales
```html
BUSCA (línea ~645):
<li><a href="https://www.facebook.com/CreaWS" title="Facebook" target="_blank">
    <i class="fa fa-facebook fa-2x"></i>
</a></li>

CAMBIA A:
<li><a href="https://www.facebook.com/TU-PAGINA" title="Facebook" target="_blank">
    <i class="fa fa-facebook fa-2x"></i>
</a></li>
```

## 💡 CONSEJOS PRO

1. **Haz respaldos antes de editar**: Copia `happykids.html` a `happykids-backup-FECHA.html`

2. **Edita de a poco**: Cambia una cosa, guarda, recarga el navegador, verifica

3. **Usa Ctrl+F**: La búsqueda es tu mejor amigo

4. **Cuidado con cerrar etiquetas**: Cada `<div>` debe tener su `</div>`

5. **Mantén la indentación**: Ayuda a entender la estructura del código

6. **Comenta tus cambios**:
```html
<!-- CAMBIADO: Logo personalizado - 01/01/2026 -->
<img src='assets/images/mi-logo.png' alt="Mi Logo" />
```

## 🆘 Si Algo Sale Mal

1. No entres en pánico
2. Cierra el archivo sin guardar
3. Abre el archivo de respaldo: `happykids-backup.html`
4. Cópialo sobre `happykids.html`
5. Intenta de nuevo con más cuidado

## 📞 ¿Necesitas Ayuda?

Pregunta específicamente:
- "¿Cómo cambio el color de los botones?"
- "¿Cómo agrego mi logo?"
- "¿Cómo quito la sección de Twitter?"
- etc.
