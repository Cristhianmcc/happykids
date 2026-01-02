# Configuración del Formulario de Contacto

## 📧 Opciones para recibir correos del formulario

### OPCIÓN 1: Web3Forms (RECOMENDADO - Gratis y sin servidor)

Esta es la opción más fácil y está ya configurada en el código.

**Pasos:**

1. Ve a https://web3forms.com
2. Regístrate con tu email (es gratis)
3. Verás tu "Access Key" en el dashboard
4. Abre el archivo `js/contact-form-handler.js`
5. En la línea 42, reemplaza `'TU_ACCESS_KEY_AQUI'` con tu Access Key:
   ```javascript
   const web3formsKey = 'tu-access-key-aqui';
   ```
6. En Web3Forms, configura el email donde quieres recibir los mensajes (infocarlitashow@gmail.com)
7. ¡Listo! El formulario enviará correos automáticamente

**Ventajas:**
- ✅ Completamente gratis
- ✅ No requiere servidor
- ✅ Funciona con hosting estático (Netlify, GitHub Pages, etc.)
- ✅ Sin configuración de servidor
- ✅ Protección anti-spam incluida
- ✅ 250 envíos gratis al mes

---

### OPCIÓN 2: Servidor PHP (Si tienes hosting con PHP)

Si tu hosting tiene soporte para PHP, puedes usar el archivo `process-contact.php`.

**Pasos:**

1. Abre `process-contact.php`
2. En la línea 3, cambia el email:
   ```php
   $to_email = "infocarlitashow@gmail.com";
   ```
3. Sube el archivo al mismo directorio que contact.html
4. Abre `js/contact-form-handler.js`
5. Comenta las líneas 44-78 (código de Web3Forms)
6. Descomenta las líneas 22-40 (código de PHP)

**Ventajas:**
- ✅ Control total del código
- ✅ Sin dependencias externas
- ✅ Envíos ilimitados

**Desventajas:**
- ❌ Requiere servidor con PHP
- ❌ Puede requerir configuración adicional del servidor de correo

---

### OPCIÓN 3: Formspree (Alternativa gratuita)

1. Ve a https://formspree.io
2. Regístrate (gratis)
3. Crea un nuevo formulario
4. Te darán una URL como `https://formspree.io/f/xxxxx`
5. En `contact.html`, busca la línea 820:
   ```html
   <form action="#" method="post"...
   ```
6. Reemplaza `action="#"` con tu URL de Formspree:
   ```html
   <form action="https://formspree.io/f/tu-id-aqui" method="post"...
   ```

---

## 🧪 Probar el formulario

1. Abre `contact.html` en tu navegador
2. Llena todos los campos requeridos
3. Haz clic en "ENVIAR"
4. Deberías ver un mensaje de confirmación en verde
5. Revisa tu email (y la carpeta de SPAM)

---

## ⚠️ IMPORTANTE

- El email configurado actualmente es: **infocarlitashow@gmail.com**
- Asegúrate de revisar la carpeta de SPAM cuando pruebes
- Web3Forms es la opción más fácil para sitios estáticos
- Si usas Netlify, GitHub Pages o similar, usa Web3Forms

---

## 🔧 Solución de problemas

**El formulario no envía:**
- Verifica que hayas configurado el Access Key de Web3Forms
- Abre la consola del navegador (F12) para ver errores
- Verifica tu conexión a internet

**No recibo correos:**
- Revisa la carpeta de SPAM
- Verifica que el email esté correctamente configurado
- En Web3Forms, verifica el dashboard para ver si llegó el envío

**Error de CORS (si usas PHP):**
- Asegúrate de que el archivo PHP esté en el mismo servidor que el HTML
- Verifica que tu servidor tenga PHP habilitado

---

## 📝 Notas

- El formulario actual captura: nombre, email, teléfono, servicio, personaje, fecha, dirección, información del niño, número de niños, hora de inicio y mensaje
- Todos los datos se envían en formato legible al correo configurado
- El archivo `contact-form-handler.js` maneja la lógica del formulario
