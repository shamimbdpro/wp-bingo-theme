
<?php

add_shortcode('bingo_tesimonial','bingo_tesimoniald'); 
 function bingo_tesimoniald(){
	ob_start();
    ?>

<!-- Start Testimonial
=========================================== -->
		
	<section class="testimonial section" id="testimonial">
		<div class="container">
			<div class="row">				
				<div class="col-lg-12">
					<!-- testimonial wrapper -->
					<div class="testimonial-slider">
                      <?php 
                       $testimonial = new WP_Query(array(
                          'post_type' => 'testimonial',
                          'posts_per_page' => -1,
                       ));
                       if($testimonial->have_posts()) :
                         while($testimonial->have_posts()) : $testimonial->the_post();  

       $testimonial_image=get_post_meta( get_the_ID(),'_testimonial_testimonial_image',true );

       $testimonial_icon=get_post_meta( get_the_ID(),'_testimonial_testimonial_icon',true );
       $testimonial_text=get_post_meta( get_the_ID(),'_testimonial_testimonial_text',true ); 
       $testimonial_Name=get_post_meta( get_the_ID(),'_testimonial_testimonial_Name',true );
       $testimonial_Title=get_post_meta( get_the_ID(),'_testimonial_testimonial_Title',true );

                         	?>

						<!-- testimonial single -->
						<div class="item text-center">
							<i class="<?php echo $testimonial_icon;?>"></i>
							<!-- client info -->
							<div class="client-details">
								<p><?php echo $testimonial_text;?></p>
							</div>
							<!-- /client info -->
							<!-- client photo -->
							<div class="client-thumb">
								<img src="<?php echo esc_url($testimonial_image)?>" class="img-responsive" alt="">
							</div>
							<div class="client-meta">
								<h3><?php echo $testimonial_Name;?></h3>
								<span> <?php echo $testimonial_Title;?></span>
							</div>
							<!-- /client photo -->
						</div>
						<!-- /testimonial single -->

                   <?php    endwhile;
                       endif;

                      ?>
					</div>
				</div> 		<!-- end col lg 12 -->
			</div>	    <!-- End row -->
		</div>       <!-- End container -->
	</section>    <!-- End Section -->
	<?php

    return ob_get_clean();	
 }
?>