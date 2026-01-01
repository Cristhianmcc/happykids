"use strict";

jQuery(window).on('elementor/frontend/init', function () {
    elementorFrontend.hooks.addAction('frontend/element_ready/cws_portfolio.default', function ($scope) {
        if ( jQuery('body').hasClass('elementor-editor-active') ) {
            init_project_carousel();
            init_pretty_photo();
        }
    });
    elementorFrontend.hooks.addAction('frontend/element_ready/cws_blog.default', function ($scope) {
        if ( jQuery('body').hasClass('elementor-editor-active') ) {
            init_project_carousel();
            init_pretty_photo();
        }
    });
    elementorFrontend.hooks.addAction('frontend/element_ready/cws_accordion_toggle.default', function ($scope) {
        if ( jQuery('body').hasClass('elementor-editor-active') ) {
            cws_accordion_init();
            cws_toggle_init();
            jQuery('.cws_widget_content.accordion_widget', $scope).cws_accordion();
            jQuery('.cws_widget_content.toggle_widget', $scope).cws_toggle('accordion_section', 'accordion_title', 'accordion_content');
        }
    });
    elementorFrontend.hooks.addAction('frontend/element_ready/cws_product_categories.default', function ($scope) {
        if ( jQuery('body').hasClass('elementor-editor-active') ) {
            init_shortcode_carousel();
        }
    });
    elementorFrontend.hooks.addAction('frontend/element_ready/cws_products.default', function ($scope) {
        if ( jQuery('body').hasClass('elementor-editor-active') ) {
            init_shortcode_carousel();
            init_pretty_photo();
        }
    });
    elementorFrontend.hooks.addAction('frontend/element_ready/cws_progress_bar.default', function ($scope) {
        if ( jQuery('body').hasClass('elementor-editor-active') ) {
            cws_progress_bar_init();
            jQuery('.single_bar', $scope).cws_progress_bar();
        }
    });
    elementorFrontend.hooks.addAction('frontend/element_ready/cws_tabs.default', function ($scope) {
        if ( jQuery('body').hasClass('elementor-editor-active') ) {
            cws_tabs_init();
            jQuery('.cws_widget_content.tab_widget', $scope).cws_tabs();
        }
    });
    elementorFrontend.hooks.addAction('frontend/element_ready/cws_testimonial_carousel.default', function ($scope) {
        if ( jQuery('body').hasClass('elementor-editor-active') ) {
            init_shortcode_carousel();
        }
    });
    elementorFrontend.hooks.addAction('frontend/element_ready/cws_tweets.default', function ($scope) {
        if ( jQuery('body').hasClass('elementor-editor-active') ) {
            widget_carousel_init();
        }
    });
});