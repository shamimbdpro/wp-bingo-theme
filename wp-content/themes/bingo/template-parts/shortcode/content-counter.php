<?php

add_shortcode('bingo_counter','bingo_agency'); 
 function bingo_agency(){
	ob_start();
    ?>
     
		
		<section  class="counter-wrapper section-sm" >
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<div class="title">
							<h2><?php echo cs_get_option('award_c_title');?></h2>
							<p><?php echo cs_get_option('Award_c_details');?></p>
						</div>
					</div>
					 <?php $counter_valu=cs_get_option('counter_group')?>
					 <?php foreach($counter_valu as $count_val) : ?>
					<!-- first count item -->
					<div class="col-md-3 col-sm-6 col-xs-6 text-center " >
						<div class="counters-item">
							<i class="<?php echo $count_val['counter_icon']?>"></i>
							<div>
							    <span class="counter" data-count="<?php echo $count_val['counter_number']?>"><?php echo $count_val['counter_number']?></span>
							</div>
							<h3><?php echo $count_val['counter_Details']?></h3>
						</div>
					</div>
					<!-- end first count item -->
				<?php endforeach;?>
				</div> 		<!-- end row -->
			</div>   	<!-- end container -->
		</section>   <!-- end section -->	 
 	 
	<?php

    return ob_get_clean();	
 }
?>