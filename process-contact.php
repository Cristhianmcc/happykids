<?php
// Configuración del correo
$to_email = "infocarlitashow@gmail.com"; // Cambia esto por tu email
$subject = "Nueva solicitud de reserva - Carlita Show";

// Verificar que el formulario fue enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    // Sanitizar y obtener los datos del formulario
    $name = isset($_POST['your-name']) ? strip_tags(trim($_POST['your-name'])) : '';
    $email = isset($_POST['your-email']) ? filter_var(trim($_POST['your-email']), FILTER_SANITIZE_EMAIL) : '';
    $phone = isset($_POST['your-phone']) ? strip_tags(trim($_POST['your-phone'])) : '';
    $service = isset($_POST['your-service']) ? strip_tags(trim($_POST['your-service'])) : '';
    $character = isset($_POST['character-choice']) ? strip_tags(trim($_POST['character-choice'])) : '';
    $event_date = isset($_POST['event-date']) ? strip_tags(trim($_POST['event-date'])) : '';
    $event_address = isset($_POST['event-address']) ? strip_tags(trim($_POST['event-address'])) : '';
    $child_info = isset($_POST['child-name-age']) ? strip_tags(trim($_POST['child-name-age'])) : '';
    $num_children = isset($_POST['num-children']) ? strip_tags(trim($_POST['num-children'])) : '';
    $start_time = isset($_POST['start-time']) ? strip_tags(trim($_POST['start-time'])) : '';
    $message = isset($_POST['your-message']) ? strip_tags(trim($_POST['your-message'])) : '';
    
    // Validar email
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo json_encode(['status' => 'error', 'message' => 'Email inválido']);
        exit;
    }
    
    // Validar nombre
    if (empty($name)) {
        echo json_encode(['status' => 'error', 'message' => 'El nombre es requerido']);
        exit;
    }
    
    // Construir el mensaje del correo
    $email_content = "=== Nueva Solicitud de Reserva ===\n\n";
    $email_content .= "INFORMACIÓN DEL CLIENTE:\n";
    $email_content .= "Nombre: $name\n";
    $email_content .= "Email: $email\n";
    $email_content .= "Teléfono: $phone\n\n";
    
    $email_content .= "DETALLES DEL EVENTO:\n";
    $email_content .= "Servicio solicitado: $service\n";
    $email_content .= "Personaje elegido: $character\n";
    $email_content .= "Fecha del evento: $event_date\n";
    $email_content .= "Dirección: $event_address\n";
    $email_content .= "Cumpleañero/a: $child_info\n";
    $email_content .= "Número de niños: $num_children\n";
    $email_content .= "Hora de inicio: $start_time\n\n";
    
    $email_content .= "MENSAJE ADICIONAL:\n";
    $email_content .= "$message\n\n";
    $email_content .= "---\n";
    $email_content .= "Este mensaje fue enviado desde el formulario de contacto de carlitashow.com\n";
    
    // Headers del correo
    $headers = "From: $name <$email>\r\n";
    $headers .= "Reply-To: $email\r\n";
    $headers .= "Content-Type: text/plain; charset=UTF-8\r\n";
    
    // Enviar el correo
    if (mail($to_email, $subject, $email_content, $headers)) {
        echo json_encode([
            'status' => 'success',
            'message' => '¡Gracias! Tu solicitud ha sido enviada exitosamente. Te responderemos pronto.'
        ]);
    } else {
        echo json_encode([
            'status' => 'error',
            'message' => 'Hubo un error al enviar el mensaje. Por favor intenta de nuevo o contáctanos directamente.'
        ]);
    }
    
} else {
    echo json_encode([
        'status' => 'error',
        'message' => 'Método no permitido'
    ]);
}
?>
