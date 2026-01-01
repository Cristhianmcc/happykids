# Guía para Subir a Netlify

Netlify es **MÁS FÁCIL** que GitHub Pages y ofrece ventajas adicionales como despliegues instantáneos y formularios gratuitos.

## 🎯 Ventajas de Netlify

- ✅ **Súper fácil** - Arrastra y suelta, listo
- ✅ **Más rápido** - Despliegues en segundos
- ✅ **SSL gratis** - HTTPS automático
- ✅ **Sin Git requerido** - Aunque lo soporta
- ✅ **Dominio personalizado gratis** - tunombre.netlify.app
- ✅ **Formularios integrados** - Maneja envíos sin código backend
- ✅ **Redirects y rewrites** - Control total de URLs

---

## 🚀 Método 1: Drag & Drop (MÁS FÁCIL)

### Paso 1: Crear Cuenta en Netlify

1. Ve a [https://www.netlify.com/](https://www.netlify.com/)
2. Haz clic en **Sign up** (Registrarse)
3. Puedes registrarte con:
   - Email (recomendado)
   - GitHub
   - GitLab
   - Bitbucket
4. Confirma tu email

---

### Paso 2: Preparar los Archivos

**IMPORTANTE**: Netlify necesita que comprimas la carpeta antes de subirla.

#### En Windows:

1. Abre la carpeta `infantil` en el Explorador de Archivos
2. **Selecciona TODO** menos:
   - ❌ `.venv/` (carpeta)
   - ❌ `.vscode/` (carpeta)
   - ❌ `__pycache__/` (carpeta)
   - ❌ `*.py` (archivos Python)
   - ❌ `DESCARGAR-RECURSOS.ps1`
   - ❌ `ACTUALIZAR-RUTAS.ps1`
   - ❌ Archivos `*-backup.html`

3. **Archivos que SÍ debes incluir**:
   - ✅ `happykids.html`
   - ✅ `index.html`
   - ✅ Carpeta `css/` completa
   - ✅ Carpeta `js/` completa
   - ✅ Carpeta `assets/` completa
   - ✅ `.gitignore`
   - ✅ Todos los archivos `.md` (guías)

4. **Clic derecho** en los archivos seleccionados → **Enviar a** → **Carpeta comprimida (zip)**
5. Nómbralo: `infantil-site.zip`

---

### Paso 3: Subir a Netlify

1. **Inicia sesión** en [https://app.netlify.com/](https://app.netlify.com/)
2. En la página principal, verás un área que dice:
   ```
   Want to deploy a new site without connecting to Git?
   Drag and drop your site output folder here
   ```
3. **Arrastra** el archivo `infantil-site.zip` a esa área
   - O haz clic en "Browse to upload" y selecciónalo

4. Netlify procesará el archivo (10-30 segundos)

5. ¡Listo! Tu sitio estará publicado en:
   ```
   https://random-name-12345.netlify.app
   ```

---

### Paso 4: Cambiar el Nombre del Sitio

El nombre aleatorio que te asigna Netlify no es muy amigable. Cámbialo:

1. En tu sitio, haz clic en **Site settings**
2. En la sección **Site details**, haz clic en **Change site name**
3. Escribe un nombre único, por ejemplo:
   - `jardin-infantil-feliz`
   - `happy-kids-colegio`
   - `mi-jardin-infantil`
4. Haz clic en **Save**

Tu sitio ahora estará en:
```
https://tu-nombre.netlify.app
```

---

## 🔄 Método 2: Deploy con Git (Más Profesional)

Si ya tienes tu código en GitHub (o quieres usar Git):

### Paso 1: Subir a GitHub

Sigue los pasos de `GUIA-GITHUB-PAGES.md` hasta el Paso 5 (subir archivos).

### Paso 2: Conectar GitHub con Netlify

1. Inicia sesión en [Netlify](https://app.netlify.com/)
2. Haz clic en **Add new site** → **Import an existing project**
3. Selecciona **GitHub** (te pedirá autorización)
4. Busca y selecciona tu repositorio `infantil`
5. **Configuración de build**:
   - **Branch to deploy**: `main`
   - **Build command**: (déjalo vacío)
   - **Publish directory**: (déjalo vacío o pon `/`)
6. Haz clic en **Deploy site**

Netlify desplegará tu sitio automáticamente cada vez que hagas push a GitHub.

---

## 🌐 Usar un Dominio Personalizado

Si tienes un dominio propio (ej: `mijardin.com`):

### Con un Dominio Nuevo

1. En Netlify, ve a **Site settings** → **Domain management**
2. Haz clic en **Add custom domain**
3. Escribe tu dominio: `mijardin.com`
4. Netlify te dirá si está disponible o te pedirá verificación

### Configurar DNS (si ya tienes el dominio)

En tu proveedor de dominios (GoDaddy, Namecheap, etc.), agrega estos registros:

**Para dominio principal** (`mijardin.com`):
```
Tipo: A
Nombre: @
Valor: 75.2.60.5
TTL: 3600
```

**Para subdominios** (`www.mijardin.com`):
```
Tipo: CNAME
Nombre: www
Valor: tu-sitio.netlify.app
TTL: 3600
```

**O usa Netlify DNS** (más fácil):
1. En Netlify → Domain settings → **Use Netlify DNS**
2. Sigue las instrucciones para cambiar los nameservers en tu proveedor
3. Netlify configurará todo automáticamente

---

## 📧 Configurar Formularios (Bonus)

Netlify puede manejar formularios sin necesidad de backend. Perfecto para contacto.

### En tu HTML, agrega el atributo `netlify`:

```html
<form name="contact" method="POST" netlify>
  <input type="text" name="name" placeholder="Tu nombre" required>
  <input type="email" name="email" placeholder="Tu email" required>
  <textarea name="message" placeholder="Tu mensaje" required></textarea>
  <button type="submit">Enviar</button>
</form>
```

Netlify capturará los envíos y los mostrará en **Forms** en tu panel.

---

## 🔄 Actualizar el Sitio (Método Drag & Drop)

Cuando hagas cambios:

1. **Guarda** los cambios en tus archivos locales
2. **Comprime** de nuevo la carpeta (crea `infantil-site-v2.zip`)
3. En Netlify, ve a tu sitio → **Deploys**
4. **Arrastra** el nuevo ZIP al área que dice "Need to update your site? Drag and drop here"
5. Netlify actualizará el sitio en segundos

---

## 🔄 Actualizar el Sitio (Método Git)

Si usaste Git:

```powershell
git add .
git commit -m "Actualización del sitio"
git push
```

Netlify detectará el cambio y desplegará automáticamente.

---

## ⚙️ Configuración Avanzada (Opcional)

### Redirects y Rewrites

Crea un archivo `_redirects` en la raíz:

```
# Redirigir www a no-www
https://www.mijardin.com/* https://mijardin.com/:splat 301!

# Redirigir HTTP a HTTPS
http://mijardin.com/* https://mijardin.com/:splat 301!

# 404 personalizado
/* /index.html 404
```

### Headers Personalizados

Crea un archivo `_headers` en la raíz:

```
/*
  X-Frame-Options: DENY
  X-Content-Type-Options: nosniff
  X-XSS-Protection: 1; mode=block
  Referrer-Policy: strict-origin-when-cross-origin
```

### Configuración de Cache

Crea `netlify.toml` en la raíz:

```toml
[build]
  publish = "."

[[headers]]
  for = "/css/*"
  [headers.values]
    Cache-Control = "public, max-age=31536000, immutable"

[[headers]]
  for = "/js/*"
  [headers.values]
    Cache-Control = "public, max-age=31536000, immutable"

[[headers]]
  for = "/assets/*"
  [headers.values]
    Cache-Control = "public, max-age=31536000, immutable"
```

---

## 🆘 Solución de Problemas

### El sitio se ve sin estilos:

1. Verifica que las carpetas `css/`, `js/`, `assets/` estén en el ZIP
2. Asegúrate de que el archivo ZIP no tenga carpetas anidadas innecesarias
3. La estructura debe ser:
   ```
   infantil-site.zip
   ├── index.html
   ├── happykids.html
   ├── css/
   ├── js/
   └── assets/
   ```
   **NO**:
   ```
   infantil-site.zip
   └── infantil/        ← EXTRA folder
       ├── index.html
       └── ...
   ```

### Errores 404 en archivos:

- Netlify es case-sensitive (diferencia mayúsculas/minúsculas)
- Verifica que los nombres en el HTML coincidan exactamente con los archivos
- `Logo.png` ≠ `logo.png`

### El sitio no se actualiza:

- Limpia la caché del navegador: `Ctrl + Shift + R` (Windows) o `Cmd + Shift + R` (Mac)
- En Netlify, ve a **Deploys** → **Trigger deploy** → **Clear cache and deploy site**

---

## 📊 Comparación: Netlify vs GitHub Pages

| Característica | Netlify | GitHub Pages |
|----------------|---------|--------------|
| **Facilidad** | ⭐⭐⭐⭐⭐ Drag & drop | ⭐⭐⭐ Requiere Git |
| **Velocidad despliegue** | ⭐⭐⭐⭐⭐ Segundos | ⭐⭐⭐ 1-2 minutos |
| **SSL/HTTPS** | ⭐⭐⭐⭐⭐ Automático | ⭐⭐⭐⭐ Automático |
| **Dominio personalizado** | ⭐⭐⭐⭐⭐ Gratis y fácil | ⭐⭐⭐⭐ Gratis |
| **Formularios** | ⭐⭐⭐⭐⭐ Incluidos | ❌ No |
| **Redirects** | ⭐⭐⭐⭐⭐ Incluidos | ⭐⭐ Limitado |
| **Preview de cambios** | ⭐⭐⭐⭐⭐ Sí | ❌ No |
| **Analytics** | ⭐⭐⭐⭐ Incluido | ❌ No |
| **Funciones serverless** | ⭐⭐⭐⭐⭐ Sí | ❌ No |
| **Precio** | Gratis (300 min build/mes) | Gratis (ilimitado) |

**Recomendación**: 
- **Netlify** si quieres facilidad y funciones avanzadas
- **GitHub Pages** si prefieres el ecosistema de GitHub

---

## 📱 App Móvil de Netlify

Netlify tiene app móvil para iOS y Android:
- Ver el estado de tus deploys
- Recibir notificaciones
- Ver analytics
- Gestionar dominios

Descárgala en tu tienda de apps: "Netlify"

---

## 🎓 Recursos Adicionales

- **Documentación oficial**: [https://docs.netlify.com/](https://docs.netlify.com/)
- **Tutoriales**: [https://www.netlify.com/blog/](https://www.netlify.com/blog/)
- **Comunidad**: [https://answers.netlify.com/](https://answers.netlify.com/)
- **Status**: [https://www.netlifystatus.com/](https://www.netlifystatus.com/)

---

## ✅ Checklist Rápido

**Preparación:**
- [ ] Crear cuenta en Netlify
- [ ] Comprimir carpeta `infantil` (solo archivos necesarios)
- [ ] Verificar que el ZIP contiene: index.html, happykids.html, css/, js/, assets/

**Despliegue:**
- [ ] Ir a [app.netlify.com](https://app.netlify.com/)
- [ ] Arrastrar ZIP al área de drag & drop
- [ ] Esperar 10-30 segundos
- [ ] ¡Sitio publicado!

**Configuración:**
- [ ] Cambiar nombre del sitio
- [ ] (Opcional) Configurar dominio personalizado
- [ ] (Opcional) Configurar formularios

**Verificación:**
- [ ] Abrir tu-sitio.netlify.app en el navegador
- [ ] Verificar estilos y imágenes
- [ ] Probar el slider y navegación
- [ ] Probar en móvil

---

## 🎉 Resumen

**Netlify es la opción MÁS FÁCIL:**

1. Crea cuenta en [netlify.com](https://www.netlify.com/)
2. Comprime tu carpeta `infantil`
3. Arrastra el ZIP a Netlify
4. ¡Listo! Tu sitio está en línea

**Tu sitio estará en**: `https://tu-nombre.netlify.app`

**Tiempo total**: ~5 minutos ⚡

---

¿Prefieres usar GitHub? Consulta `GUIA-GITHUB-PAGES.md`
