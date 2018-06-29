<?php
/**
 * Get the bootstrap! If using the plugin from wordpress.org, REMOVE THIS!
 */
if ( file_exists( dirname( __FILE__ ) . '/cmb2/init.php' ) ) {
  require_once dirname( __FILE__ ) . '/cmb2/init.php';
} elseif ( file_exists( dirname( __FILE__ ) . '/CMB2/init.php' ) ) {
  require_once dirname( __FILE__ ) . '/CMB2/init.php';
}

add_action( 'cmb2_admin_init', 'methabox' );
  
function methabox(){
  /*******************************************************
                         Home slider
  *********************************************************/
  
  $pref='_slider_';
   $slider_item = new_cmb2_box( array(
      'id'           => 'slider_Button',
      'title'        => 'Slider metabox',
      'object_types' => array( 'slider' ),
    ));
  $slider_item->add_field( array(
    'name'       => esc_html__( 'Button Text', 'bingo' ),
    'desc'       => esc_html__( 'Slider Button text', 'bingo' ),
    'id'         => $pref.'slider_btn',
    'type'       => 'text',
  ));
  $slider_item->add_field( array(
    'name'       => esc_html__( 'Button URL', 'bingo' ),
    'desc'       => esc_html__( 'Slider Button Url', 'bingo' ),
    'id'         => $pref.'btn_url',
    'type'       => 'text_url',
  ));

  $slider_item->add_field( array(
    'name'       => esc_html__( 'Button Text', 'bingo' ),
    'desc'       => esc_html__( 'Slider Button text', 'bingo' ),
    'id'         => $pref.'slider_btn2',
    'type'       => 'text',
  ));
  $slider_item->add_field( array(
    'name'       => esc_html__( 'Button URL', 'bingo' ),
    'desc'       => esc_html__( 'Slider Button Url', 'bingo' ),
    'id'         => $pref.'btn_url2',
    'type'       => 'text_url',
  ));


  /*******************************************************
                        Testimonial
  *********************************************************/
  
  $pref='_testimonial_';
   $slider_item = new_cmb2_box( array(
      'id'           => 'testimonail_Button',
      'title'        => 'Slider metabox',
      'object_types' => array( 'testimonial' ),
    ));
  $slider_item->add_field( array(
    'name'       => esc_html__( 'Icon', 'bingo' ),
    'desc'       => esc_html__( 'Testimonial Icon', 'bingo' ),
    'id'         => $pref.'testimonial_icon',
    'type'       => 'text',
  )); 
   $slider_item->add_field( array(
    'name'       => esc_html__( 'Testimonial Details', 'bingo' ),
    'desc'       => esc_html__( 'Testimonial Details', 'bingo' ),
    'id'         => $pref.'testimonial_text',
    'type'       => 'wysiwyg',
  ));
  $slider_item->add_field( array(
    'name'       => esc_html__( 'Testimonial_image', 'bingo' ),
    'desc'       => esc_html__( 'Testimonial Image', 'bingo' ),
    'id'         => $pref.'testimonial_image',
    'type'       => 'file',
  ));
 $slider_item->add_field( array(
    'name'       => esc_html__( 'Testimonial Name', 'bingo' ),
    'desc'       => esc_html__( 'Testimonial Name', 'bingo' ),
    'id'         => $pref.'testimonial_Name',
    'type'       => 'text',
  ));
 $slider_item->add_field( array(
    'name'       => esc_html__( 'Testimonial_Title', 'bingo' ),
    'desc'       => esc_html__( 'Testimonial Title', 'bingo' ),
    'id'         => $pref.'testimonial_Title',
    'type'       => 'text',
  ));


/*********************************************
          Service Meta box
***********************************************/
  $pref='_service_';
   $slider_item = new_cmb2_box( array(
      'id'           => 'srevice_meta',
      'title'        => 'Service metabox',
      'object_types' => array( 'service' ),
    ));
  $slider_item->add_field( array(
    'name'       => esc_html__( 'Icon', 'bingo' ),
    'desc'       => esc_html__( 'Service Icon', 'bingo' ),
    'id'         => $pref.'service_icon',
    'type'       => 'text',
  ));
    $slider_item->add_field( array(
    'name'       => esc_html__( 'Icon', 'bingo' ),
    'desc'       => esc_html__( 'Service Description', 'bingo' ),
    'id'         => $pref.'service_des',
    'type'       => 'wysiwyg',
  ));


  /*********************************************
          Service Meta box
***********************************************/
  $pref='_portfolio_';
   $slider_item = new_cmb2_box( array(
      'id'           => 'portfolio',
      'title'        => 'Portfolio metabox',
      'object_types' => array( 'portfolio' ),
    ));
    $slider_item->add_field( array(
    'name'       => esc_html__( 'portfolio Image', 'bingo' ),
    'desc'       => esc_html__( 'portfolio Image', 'bingo' ),
    'id'         => $pref.'portfolio_img',
    'type'       => 'file',
  ));
   $slider_item->add_field( array(
    'name'       => esc_html__( 'portfolio title', 'bingo' ),
    'desc'       => esc_html__( 'portfolio Title', 'bingo' ),
    'id'         => $pref.'portfolio_title',
    'type'       => 'text',
  ));



}
?>