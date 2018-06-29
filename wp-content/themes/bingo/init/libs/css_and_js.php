<?php 
 function css_and_js(){
   	     /********************************************
		                All CSS file
		 **********************************************/
	wp_enqueue_style('themefisher-font',get_template_directory_uri().'/plugins/themefisher-font/style.css','null','15542','all');
	wp_enqueue_style('bootstrap.min.css',get_template_directory_uri().'/plugins/bootstrap/css/bootstrap.min.css','null','1.140','all');
	wp_enqueue_style('lightbox.min.css',get_template_directory_uri().'/plugins/lightbox2/dist/css/lightbox.min.css','null','1.140','all');
	wp_enqueue_style('slick.css',get_template_directory_uri().'/plugins/slick-carousel/slick/slick.css','null','1.140','all');
	wp_enqueue_style('slick-theme.css',get_template_directory_uri().'/plugins/slick-carousel/slick/slick-theme.css','null','1.140','all');

	wp_enqueue_style('slick-theme.css',get_template_directory_uri().'/plugins/slick-carousel/slick/slick-theme.css','null','1.140','all');
	/* Colors */
	wp_enqueue_style('green.css',get_template_directory_uri().'/css/colors/green.css','null','1.140','all');
	wp_enqueue_style('red.css',get_template_directory_uri().'/css/colors/red.css','null','1.140','all');
	wp_enqueue_style('blue.css',get_template_directory_uri().'/css/colors/blue.css','null','1.140','all');
	wp_enqueue_style('light-blue.css',get_template_directory_uri().'/css/colors/light-blue.css','null','1.140','all');
	wp_enqueue_style('yellow.css',get_template_directory_uri().'/css/colors/yellow.css','null','1.140','all');
	wp_enqueue_style('light-green.css',get_template_directory_uri().'/css/colors/light-green.css','null','1.140','all');
	wp_enqueue_style('style.css',get_template_directory_uri().'/css/style.css','null','1.140','all');
    wp_enqueue_style('main_style',get_stylesheet_uri());




	     /********************************************
		                All Script file
		 **********************************************/
    wp_enqueue_script('jquery');
    wp_enqueue_script('bootstrap.js',get_template_directory_uri().'/plugins/bootstrap/js//bootstrap.min.js','null','1.0.0',true);
     wp_enqueue_script('jquery.parallax-1.1.3.js',get_template_directory_uri().'/plugins/parallax/jquery.parallax-1.1.3.js','null','1.0.0',true);
    wp_enqueue_script('lightbox.min.js',get_template_directory_uri().'/plugins/lightbox2/dist/js/lightbox.min.js','null','1.0.0',true);
    wp_enqueue_script('slick.min.js',get_template_directory_uri().'/plugins/slick-carousel/slick/slick.min.js','null','1.0.0',true);
     wp_enqueue_script('mixitup.min.js',get_template_directory_uri().'/plugins/mixitup/dist/mixitup.min.js','null','1.0.0',true);
     wp_enqueue_script('smooth-scroll.min.js',get_template_directory_uri().'/plugins/smooth-scroll/dist/js/smooth-scroll.min.js','null','1.0.0',true);
     wp_enqueue_script('script.js',get_template_directory_uri().'/js/script.js','null','1.0.0',true);
}


?>