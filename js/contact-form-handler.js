// Script para manejar el formulario de contacto
document.addEventListener('DOMContentLoaded', function() {
    const contactForm = document.querySelector('.wpcf7-form');
    
    if (contactForm) {
        contactForm.addEventListener('submit', function(e) {
            e.preventDefault();
            
            // Obtener el botón de envío
            const submitButton = contactForm.querySelector('input[type="submit"]');
            const responseOutput = contactForm.querySelector('.wpcf7-response-output');
            
            // Deshabilitar el botón mientras se procesa
            submitButton.disabled = true;
            submitButton.value = 'ENVIANDO...';
            
            // Recopilar los datos del formulario
            const formData = new FormData(contactForm);
            
            // OPCIÓN 1: Usar PHP (descomentar si tienes servidor PHP)
            /*
            fetch('process-contact.php', {
                method: 'POST',
                body: formData
            })
            .then(response => response.json())
            .then(data => {
                if (data.status === 'success') {
                    responseOutput.innerHTML = '<p class="wpcf7-mail-sent-ok">' + data.message + '</p>';
                    responseOutput.setAttribute('aria-hidden', 'false');
                    contactForm.reset();
                } else {
                    responseOutput.innerHTML = '<p class="wpcf7-mail-sent-ng">' + data.message + '</p>';
                    responseOutput.setAttribute('aria-hidden', 'false');
                }
                submitButton.disabled = false;
                submitButton.value = 'ENVIAR';
            })
            .catch(error => {
                responseOutput.innerHTML = '<p class="wpcf7-mail-sent-ng">Error al enviar el formulario. Por favor intenta de nuevo.</p>';
                responseOutput.setAttribute('aria-hidden', 'false');
                submitButton.disabled = false;
                submitButton.value = 'ENVIAR';
            });
            */
            
            // OPCIÓN 2: Usar Web3Forms (gratuito, sin servidor)
            // Regístrate en https://web3forms.com para obtener tu Access Key
            const web3formsKey = '4cddb24a-1d0f-4bdd-a7b8-f442e16fee14'; // Reemplaza con tu key de Web3Forms
            
            // Agregar el access key al formData
            formData.append('access_key', web3formsKey);
            
            // Agregar información adicional
            formData.append('subject', 'Nueva solicitud de reserva - Carlita Show');
            formData.append('from_name', 'Formulario Web Carlita Show');
            
            fetch('https://api.web3forms.com/submit', {
                method: 'POST',
                body: formData
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    responseOutput.innerHTML = '<p class="wpcf7-mail-sent-ok">¡Gracias! Tu solicitud ha sido enviada exitosamente. Te responderemos pronto.</p>';
                    responseOutput.setAttribute('aria-hidden', 'false');
                    responseOutput.style.display = 'block';
                    responseOutput.style.color = '#398f14';
                    responseOutput.style.backgroundColor = '#eeffd7';
                    responseOutput.style.border = '2px solid #398f14';
                    responseOutput.style.padding = '15px';
                    responseOutput.style.marginTop = '15px';
                    contactForm.reset();
                } else {
                    responseOutput.innerHTML = '<p class="wpcf7-mail-sent-ng">Hubo un error al enviar el mensaje. Por favor intenta de nuevo.</p>';
                    responseOutput.setAttribute('aria-hidden', 'false');
                    responseOutput.style.display = 'block';
                    responseOutput.style.color = '#dc3232';
                    responseOutput.style.backgroundColor = '#ffe6e6';
                    responseOutput.style.border = '2px solid #dc3232';
                    responseOutput.style.padding = '15px';
                    responseOutput.style.marginTop = '15px';
                }
                submitButton.disabled = false;
                submitButton.value = 'ENVIAR';
                
                // Scroll suave hacia el mensaje
                responseOutput.scrollIntoView({ behavior: 'smooth', block: 'center' });
            })
            .catch(error => {
                console.error('Error:', error);
                responseOutput.innerHTML = '<p class="wpcf7-mail-sent-ng">Error al enviar el formulario. Por favor intenta de nuevo o contáctanos directamente.</p>';
                responseOutput.setAttribute('aria-hidden', 'false');
                responseOutput.style.display = 'block';
                responseOutput.style.color = '#dc3232';
                responseOutput.style.backgroundColor = '#ffe6e6';
                responseOutput.style.border = '2px solid #dc3232';
                responseOutput.style.padding = '15px';
                responseOutput.style.marginTop = '15px';
                submitButton.disabled = false;
                submitButton.value = 'ENVIAR';
            });
        });
    }
});
