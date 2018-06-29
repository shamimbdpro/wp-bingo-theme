<?php 
 function theme_support(){
	add_theme_support('post-thumbnails');
	register_nav_menus(array(
       'mainmenu' => 'Main Menu',
	));
}
add_action('after_setup_theme','theme_support');













/***************************************************\
                  Theme Widget
******************************************************/

class My_Widget extends WP_Widget {
    function __construct() {
 
        parent::__construct(
            'my-text', 
            'Google Map' 
        );
    }
    public function widget( $args, $instance ) {
        echo '<h2 class="widgettitle">'.$instance['title'].'</h2>';
        ?>

      <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d14606.93030142689!2d90.360714!3d23.756914000000002!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1525547414794"  frameborder="0" style="border:0" allowfullscreen></iframe>
        <?php
    }
 
    public function form( $instance ) {
 
        $title = ! empty( $instance['title'] ) ? $instance['title'] : esc_html__( '', 'text_domain' );
        $text = ! empty( $instance['text'] ) ? $instance['text'] : esc_html__( '', 'text_domain' );
        ?>
        <p>
            <label for="<?php echo esc_attr( $this->get_field_id( 'title' ) ); ?>"><?php esc_attr_e( 'Title:', 'text_domain' ); ?></label>
            <input class="widefat" id="<?php echo esc_attr( $this->get_field_id( 'title' ) ); ?>" name="<?php echo esc_attr( $this->get_field_name( 'title' ) ); ?>" type="text" value="<?php echo esc_attr( $title ); ?>">
        </p>
        <?php
 
    }
 
    public function update( $new_instance, $old_instance ) {
 
        $instance = array();
 
        $instance['title'] = ( !empty( $new_instance['title'] ) ) ? strip_tags( $new_instance['title'] ) : '';
        $instance['text'] = ( !empty( $new_instance['text'] ) ) ? $new_instance['text'] : '';
 
        return $instance;
    }
 
}
$my_widget = new My_Widget();

function bigo_widget(){
   register_sidebar(array(
      'name' => 'Footer Widget First Coulmn',
       'id'  => 'footer_widget_first_col',
   ));
   register_sidebar(array(
     
      'name' => 'Footer Widget Second Coulmn',
       'id'  => 'footer_widget_second_col',
   ));
    register_sidebar(array(
     
      'name' => 'Footer Widget Third Coulmn',
       'id'  => 'footer_widget_third_col',
   ));
   register_sidebar(array(
     
      'name' => 'Footer Widget Four Coulmn',
       'id'  => 'footer_widget_four_col',
   ));
   register_widget( 'My_Widget' );
}
add_action('widgets_init','bigo_widget');







?>