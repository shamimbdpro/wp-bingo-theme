<?php 


 add_action('init','custom_post');
       
 function custom_post(){
     /***********************************************
                     Home Slider
     ************************************************/
  register_post_type( 'slider',
    [
      'labels' => array(
        'name' => __( 'Slider','bingo' ),
        'singular_name' => __( 'Slider','bingo' )
      ),
      'public' => true,
      'has_archive' => true,
      'menu_icon'  => "dashicons-media-text",

      'supports' => array(
        'title','thumbnail','custom-fields','editor'
      ),
    ]
  );
       /***********************************************
                     Home Slider
     ************************************************/
  register_post_type( 'testimonial',
    [
      'labels' => array(
        'name' => __( 'testimonial','bingo' ),
        'singular_name' => __( 'Testimonial','bingo' )
      ),
      'public' => true,
      'has_archive' => true,
      'menu_icon'  => "dashicons-media-text",

      'supports' => array(
        'title','custom-fields',
      ),
    ]
  );
/***********************************************
                     Service
     ************************************************/
  register_post_type( 'service',
    [
      'labels' => array(
        'name' => __( 'service','bingo' ),
        'singular_name' => __( 'service','bingo' )
      ),
      'public' => true,
      'has_archive' => true,
      'menu_icon'  => "dashicons-media-text",

      'supports' => array(
        'title','custom-fields',
      ),
    ]
  );
/***********************************************
                     Service
     ************************************************/
  register_post_type( 'portfolio',
    [
      'labels' =>[
        'name' => __( 'portfolio','bingo' ),
        'singular_name' => __( 'portfolio','bingo' )
      ],
      'public' => true,
      'has_archive' => true,
      'menu_icon'  => "dashicons-media-text",

      'supports' => [
        'title','custom-fields',
      ],    
 
    ]
  );
   register_taxonomy(
        'portfolio_category',
        'portfolio',
        array(
            'label' => __( 'Add New Cateogory' ),
            'public' => true,
            'rewrite' => false,
            'hierarchical' => true,
        )
  );






}
?>