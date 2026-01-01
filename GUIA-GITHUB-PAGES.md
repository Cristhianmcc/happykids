# Guía para Subir a GitHub Pages

Esta guía te ayudará a publicar tu sitio HappyKids en GitHub Pages para que esté disponible en internet.

## ¿Qué es GitHub Pages?

GitHub Pages es un servicio gratuito de GitHub que te permite alojar sitios web estáticos directamente desde un repositorio de GitHub. Es perfecto para este sitio porque ya funciona 100% offline (no necesita servidor).

---

## Paso 1: Crear una Cuenta en GitHub

1. Ve a [https://github.com](https://github.com)
2. Haz clic en **Sign up** (Registrarse)
3. Completa el formulario con:
   - Tu email
   - Una contraseña segura
   - Un nombre de usuario (ej: `tuusuario`)
4. Verifica tu email

---

## Paso 2: Crear un Nuevo Repositorio

1. **Inicia sesión** en GitHub
2. Haz clic en el botón **+** (arriba a la derecha) → **New repository**
3. Completa los datos:
   - **Repository name**: `infantil` (o el nombre que prefieras)
   - **Description**: "Sitio web infantil HappyKids"
   - **Público o Privado**: Elige **Public** (necesario para GitHub Pages gratuito)
   - **NO marques** "Add a README file"
4. Haz clic en **Create repository**

---

## Paso 3: Instalar Git en tu Computadora

### En Windows:

1. Descarga Git desde [https://git-scm.com/download/win](https://git-scm.com/download/win)
2. Ejecuta el instalador
3. Usa las opciones por defecto (solo dar clic en "Next")
4. Al terminar, abre **PowerShell** o **Git Bash**

### Verificar instalación:

```powershell
git --version
```

Deberías ver algo como `git version 2.x.x`

---

## Paso 4: Configurar Git (Solo la Primera Vez)

Abre PowerShell en la carpeta `infantil` y ejecuta:

```powershell
git config --global user.name "Tu Nombre"
git config --global user.email "tuemail@example.com"
```

Usa el **mismo email** que usaste para registrarte en GitHub.

---

## Paso 5: Subir los Archivos a GitHub

### 5.1 Inicializar Git en la Carpeta

En PowerShell, dentro de la carpeta `infantil`, ejecuta:

```powershell
git init
```

### 5.2 Agregar los Archivos

```powershell
git add .
```

Esto agrega TODOS los archivos de la carpeta.

### 5.3 Hacer el Primer Commit

```powershell
git commit -m "Primer commit: Sitio HappyKids completo"
```

### 5.4 Conectar con GitHub

Reemplaza `TUUSUARIO` con tu nombre de usuario de GitHub:

```powershell
git remote add origin https://github.com/TUUSUARIO/infantil.git
```

Ejemplo: si tu usuario es `maria123`:
```powershell
git remote add origin https://github.com/maria123/infantil.git
```

### 5.5 Subir los Archivos

```powershell
git branch -M main
git push -u origin main
```

Te pedirá tu **usuario** y **contraseña** de GitHub. 

**IMPORTANTE**: GitHub ya no acepta contraseñas. Necesitas crear un **Personal Access Token**:

1. Ve a GitHub → Settings (tu perfil) → Developer settings
2. Personal access tokens → Tokens (classic) → Generate new token
3. Dale un nombre: "Subir sitio infantil"
4. Marca el scope: `repo` (completo)
5. Genera el token y **CÓPIALO** (no podrás verlo de nuevo)
6. Usa ese token como contraseña cuando Git te lo pida

---

## Paso 6: Activar GitHub Pages

1. Ve a tu repositorio en GitHub: `https://github.com/TUUSUARIO/infantil`
2. Haz clic en **Settings** (Configuración)
3. En el menú izquierdo, haz clic en **Pages**
4. En **Source**, selecciona:
   - Branch: `main`
   - Folder: `/ (root)`
5. Haz clic en **Save**

GitHub procesará el sitio (toma 1-3 minutos).

---

## Paso 7: Ver tu Sitio en Línea

Después de unos minutos, tu sitio estará disponible en:

```
https://TUUSUARIO.github.io/infantil/
```

Ejemplo: `https://maria123.github.io/infantil/`

⚠️ **IMPORTANTE**: El sitio se abrirá en `index.html`, que automáticamente redirige a `happykids.html`.

---

## Actualizar el Sitio (Hacer Cambios)

Cuando hagas cambios en los archivos localmente:

1. **Guarda** los cambios en los archivos
2. Abre PowerShell en la carpeta `infantil`
3. Ejecuta:

```powershell
git add .
git commit -m "Descripción de los cambios"
git push
```

Ejemplo:
```powershell
git add .
git commit -m "Cambié el título y las imágenes"
git push
```

GitHub Pages actualizará el sitio automáticamente en 1-2 minutos.

---

## Usar un Dominio Personalizado (Opcional)

Si tienes un dominio propio (ej: `mijardin.com`):

1. En tu proveedor de dominios (GoDaddy, Namecheap, etc.), agrega estos registros DNS:

   **Tipo A** (para apex domain):
   ```
   185.199.108.153
   185.199.109.153
   185.199.110.153
   185.199.111.153
   ```

   **CNAME** (para www):
   ```
   www  →  TUUSUARIO.github.io
   ```

2. En GitHub → Settings → Pages → Custom domain, escribe tu dominio
3. Marca **Enforce HTTPS**
4. Espera 24-48 horas para que se propague

---

## Estructura de Archivos en GitHub

Tu repositorio debería verse así:

```
infantil/
├── happykids.html             ← Archivo principal (con rutas locales)
├── index.html                 ← Redirige a happykids.html
├── css/                       ← 20 archivos CSS
│   ├── happykids-styles.css
│   ├── font-awesome.min.css
│   └── ...
├── js/                        ← 41 archivos JavaScript
│   ├── jquery.min.js
│   ├── owl.carousel.js
│   └── ...
├── assets/
│   ├── images/                ← 54 imágenes
│   └── icons/                 ← 6 iconos
├── README.md                  ← Instrucciones de uso
└── GUIA-GITHUB-PAGES.md       ← Esta guía
```

---

## Verificar que Todo Funciona

Después de publicar:

1. Abre `https://TUUSUARIO.github.io/infantil/` en tu navegador
2. **Abre las Herramientas de Desarrollador** (F12)
3. Ve a la pestaña **Console**
4. Si ves errores 404, algo no se subió correctamente

### Solución de Errores Comunes:

**Error 404 en archivos CSS/JS/imágenes:**
- Asegúrate de que las carpetas `css/`, `js/`, y `assets/` estén en GitHub
- Verifica que los nombres de archivos coincidan (mayúsculas/minúsculas importan)

**El sitio se ve sin estilos:**
- Revisa que `happykids.html` use rutas relativas (`css/...` en lugar de `https://...`)
- Ejecuta `ACTUALIZAR-RUTAS.ps1` de nuevo si es necesario

**El sitio no se actualiza:**
- GitHub Pages puede tardar hasta 10 minutos en actualizar
- Prueba hacer "hard refresh" en el navegador: `Ctrl + Shift + R` (Windows) o `Cmd + Shift + R` (Mac)

---

## Comandos Git Útiles

```powershell
# Ver el estado de los archivos
git status

# Ver el historial de cambios
git log

# Deshacer cambios antes de commit
git checkout -- archivo.html

# Ver diferencias
git diff

# Ver los repositorios remotos
git remote -v
```

---

## Recursos Adicionales

- **Documentación GitHub Pages**: [https://docs.github.com/pages](https://docs.github.com/pages)
- **Guía de Git**: [https://git-scm.com/doc](https://git-scm.com/doc)
- **GitHub Desktop** (alternativa visual): [https://desktop.github.com](https://desktop.github.com)

---

## Resumen Rápido

1. ✅ Crear cuenta en GitHub
2. ✅ Crear repositorio público
3. ✅ Instalar Git en tu computadora
4. ✅ Configurar usuario y email de Git
5. ✅ Ejecutar: `git init`, `git add .`, `git commit -m "..."`, `git remote add origin ...`, `git push`
6. ✅ Activar GitHub Pages en Settings → Pages → Branch: main → Save
7. ✅ Visitar `https://TUUSUARIO.github.io/infantil/`
8. ✅ ¡Sitio publicado! 🎉

---

**¿Necesitas ayuda?** Consulta los recursos adicionales o busca en [GitHub Community](https://github.community/).
