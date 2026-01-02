# Script para actualizar rutas en páginas HTML secundarias
function Actualizar-PaginaHTML {
    param(
        [string]$Archivo
    )
    
    Write-Host "Actualizando $Archivo..." -ForegroundColor Cyan
    
    $contenido = Get-Content $Archivo -Raw -Encoding UTF8
    
    # Actualizar CSS
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/plugins/contact-form-7/includes/css/styles\.css', 'css/styles-cf7.css'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/plugins/woocommerce/assets/css/brands\.css', 'css/brands.css'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/themes/happykids/front/css/styles\.css', 'css/styles.css'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/themes/happykids/woocommerce/css/woocommerce\.css', 'css/woocommerce.css'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/plugins/elementor/assets/lib/eicons/css/elementor-icons\.min\.css', 'css/elementor-icons.min.css'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/plugins/elementor/assets/css/frontend\.min\.css', 'css/frontend.min.css'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/uploads/elementor/css/post-\d+\.css', 'css/post-elementor.css'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/plugins/elementor/assets/lib/font-awesome/css/all\.min\.css', 'css/all.min.css'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/plugins/elementor/assets/lib/font-awesome/css/v4-shims\.min\.css', 'css/v4-shims.min.css'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/themes/happykids-child/style\.css', 'css/style.css'
    
    # Actualizar JavaScript
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-includes/js/jquery/jquery\.min\.js', 'js/jquery.min.js'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-includes/js/jquery/jquery-migrate\.min\.js', 'js/jquery-migrate.min.js'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery\.blockUI\.min\.js', 'js/jquery.blockUI.min.js'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart\.min\.js', 'js/add-to-cart.min.js'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/plugins/woocommerce/assets/js/js-cookie/js\.cookie\.min\.js', 'js/js.cookie.min.js'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce\.min\.js', 'js/woocommerce.min.js'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/themes/happykids-child/tuner/js/colorpicker\.js', 'js/colorpicker.js'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/themes/happykids-child/tuner/js/scripts\.js', 'js/tuner-scripts.js'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/themes/happykids/front/js/modernizr\.custom\.js', 'js/modernizr.custom.js'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/plugins/woocommerce/assets/js/flexslider/jquery\.flexslider\.min\.js', 'js/jquery.flexslider.min.js'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/themes/happykids/front/js/flickr\.js', 'js/flickr.js'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/plugins/elementor/assets/lib/font-awesome/js/v4-shims\.min\.js', 'js/v4-shims.min.js'
    
    # Actualizar imágenes
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/uploads/bfi_thumb/logo_retina-[^"]+\.png', 'assets/images/logo.png'
    $contenido = $contenido -replace 'https://happykids\.cwsthemes\.com/wp-content/uploads/\d+/\d+/([^"]+)', 'assets/images/$1'
    
    # Actualizar enlaces del menú a páginas locales
    $contenido = $contenido -replace 'href="https://happykids\.cwsthemes\.com/"', 'href="happykids.html"'
    $contenido = $contenido -replace 'href="https://happykids\.cwsthemes\.com/6-color-variations/"', 'href="features.html"'
    $contenido = $contenido -replace 'href="https://happykids\.cwsthemes\.com/content-elements/"', 'href="elements.html"'
    $contenido = $contenido -replace 'href="https://happykids\.cwsthemes\.com/grids-showcase/"', 'href="grids.html"'
    $contenido = $contenido -replace 'href="https://happykids\.cwsthemes\.com/videos/"', 'href="videos.html"'
    $contenido = $contenido -replace 'href="https://happykids\.cwsthemes\.com/typography/"', 'href="typography.html"'
    $contenido = $contenido -replace 'href="https://happykids\.cwsthemes\.com/pricing-tables/"', 'href="pricing.html"'
    $contenido = $contenido -replace 'href="https://happykids\.cwsthemes\.com/portfolio-1-column/"', 'href="portfolio.html"'
    $contenido = $contenido -replace 'href="https://happykids\.cwsthemes\.com/right-sidebar/"', 'href="blog.html"'
    $contenido = $contenido -replace 'href="https://happykids\.cwsthemes\.com/contact/"', 'href="contact.html"'
    
    # Enlaces de redes sociales (dejar como están - externos)
    # Enlaces de búsqueda
    $contenido = $contenido -replace 'action="https://happykids\.cwsthemes\.com/"', 'action="search.php"'
    
    Set-Content $Archivo -Value $contenido -Encoding UTF8 -NoNewline
    Write-Host "✓ $Archivo actualizado" -ForegroundColor Green
}

# Ejecutar
Actualizar-PaginaHTML "features.html"
