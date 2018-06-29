<?php 

 add_action('wp_enqueue_scripts', 'bingo_output_css');
 function bingo_output_css(){
    wp_enqueue_style(
        'bingo_inline_css',
        get_template_directory_uri().'/dynamic.css'

    );
    
    $value=cs_get_option('contact_background');
    $award_background=cs_get_option('award_background');
     $breadcum=cs_get_option('breadcum');
      $video_bottom_bg=cs_get_option('video_bottom_secion_bg');
      $pricing_bg=cs_get_option('pricing_bg');
       $Package_bg=cs_get_option('Package_bg');
    $css="";
    $css.="
      .call-to-action{
          background-image:url({$value['image']});
          background-color:{$value['color']};
          background-repeat:{$value['repeat']};
          background-position:{$value['position']};
          background-size:{$value['size']};
    	    background-attachment:{$value['attachment']};
    	}
      .section-sm{
          background-image:url({$award_background['image']});
          background-color:{$award_background['color']};
          background-repeat:{$award_background['repeat']};
          background-position:{$award_background['position']};
          background-size:{$award_background['size']};
          background-attachment:{$award_background['attachment']};
      }
      .single-page-header{
          background-image:url({$breadcum['image']});
          background-color:{$breadcum['color']};
          background-repeat:{$breadcum['repeat']};
          background-position:{$breadcum['position']};
          background-size:{$breadcum['size']};
          background-attachment:{$breadcum['attachment']};
      }
     .call-to-action-2{
          background-image:url({$video_bottom_bg['image']});
          background-color:{$video_bottom_bg['color']};
          background-repeat:{$video_bottom_bg['repeat']};
          background-position:{$video_bottom_bg['position']};
          background-size:{$video_bottom_bg['size']};
          background-attachment:{$video_bottom_bg['attachment']};
     }
    .pricing-table{
          background-image:url({$pricing_bg['image']});
          background-color:{$pricing_bg['color']};
          background-repeat:{$pricing_bg['repeat']};
          background-position:{$pricing_bg['position']};
          background-size:{$pricing_bg['size']};
          background-attachment:{$pricing_bg['attachment']};
     }


       ";

    wp_add_inline_style('bingo_inline_css',$css);

 }
?>