
<?php 
/***************************************************
              Breadcum
**************************************************/
require_once 'init/libs/mj_wp_breadcum.php';


/***************************************************
              Theme Support
**************************************************/
require_once 'init/libs/theme_support.php';


/***************************************************
              theme css and js
**************************************************/
require_once 'init/libs/css_and_js.php';
add_action('wp_enqueue_scripts','css_and_js');



/***************************************************
          Theme dynamic css
****************************************************/
require_once 'init/libs/output_css.php';


/***************************************************
              Custom Post
****************************************************/
require_once 'init/libs/post/custom_post.php';


/***************************************************
              Shortcode
****************************************************/
require_once 'template-parts/shortcode/shortcode.php';
require_once 'template-parts/shortcode/content-counter.php';
require_once 'template-parts/shortcode/content-contact.php';
require_once 'template-parts/shortcode/content-tesimonial.php';


/***************************************************
            Framework addtion
**************************************************/

require_once  get_template_directory().'/framework/codestar/cs-framework.php';
require_once 'framework/custom.php';


/***************************************************
          CMB2 Metabox
****************************************************/
require_once get_template_directory().'/framework/metabox.php';


/***********Move Contact from Element with blog********/
function wpb_move_comment_field_to_bottom( $fields ) {
$comment_field = $fields['comment'];
//$email_field = $fields['email'];
unset( $fields['comment'] );
//unset( $fields['email'] );
$fields['comment'] = $comment_field;
//$fields['email'] = $email_field;
return $fields;
} 
add_filter( 'comment_form_fields', 'wpb_move_comment_field_to_bottom' );
/***********Remove website********/
function wpbeginner_remove_comment_url($arg) {
    $arg['url'] = '';
    return $arg;
}
add_filter('comment_form_default_fields', 'wpbeginner_remove_comment_url');
?>


