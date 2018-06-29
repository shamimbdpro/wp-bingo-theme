<?php

add_shortcode('bingo_contact','bingo_contact1'); 
 function bingo_contact1(){
	ob_start();
    ?> 
 	 <section class="call-to-action section">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<h2><?php echo cs_get_option('Home_c_title');?></h2>
				<p><?php echo cs_get_option('Home_c_details');?></p>
				<a href="<?php echo cs_get_option('Home_c_url');?>" class="btn btn-main">Contact Us</a>
			</div>
		</div> 		<!-- End row -->
	</div>   	<!-- End container -->
</section>   <!-- End section -->
	<?php

    return ob_get_clean();	
 }
?>