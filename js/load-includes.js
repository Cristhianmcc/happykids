/**
 * Script para cargar las secciones HTML del tema HappyKids
 */

async function loadIncludes() {
    try {
        // Cargar HEAD
        const headResponse = await fetch('includes/head.html');
        const headHTML = await headResponse.text();
        const tempHead = document.createElement('div');
        tempHead.innerHTML = headHTML;
        const headPlaceholder = document.getElementById('head-placeholder');
        while (tempHead.firstChild) {
            headPlaceholder.parentNode.insertBefore(tempHead.firstChild, headPlaceholder);
        }
        headPlaceholder.remove();

        // Cargar HEADER
        const headerResponse = await fetch('includes/header.html');
        const headerHTML = await headerResponse.text();
        document.getElementById('header-placeholder').outerHTML = headerHTML;

        // Cargar SLIDER
        const sliderResponse = await fetch('includes/slider.html');
        const sliderHTML = await sliderResponse.text();
        document.getElementById('slider-placeholder').outerHTML = sliderHTML;

        // Cargar CONTENT
        const contentResponse = await fetch('includes/content.html');
        const contentHTML = await contentResponse.text();
        document.getElementById('content-placeholder').outerHTML = contentHTML;

        // Cargar FOOTER
        const footerResponse = await fetch('includes/footer.html');
        const footerHTML = await footerResponse.text();
        document.getElementById('footer-placeholder').outerHTML = footerHTML;

        console.log('Todas las secciones cargadas correctamente');
    } catch (error) {
        console.error('Error cargando las secciones:', error);
    }
}

// Cargar cuando el DOM esté listo
if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', loadIncludes);
} else {
    loadIncludes();
}
