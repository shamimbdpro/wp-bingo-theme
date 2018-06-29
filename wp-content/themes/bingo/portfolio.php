 <?php 
/* 

 Template name:Portfolio
 
*/ 

?>
<?php get_header();?>
<!--
End Fixed Navigation
==================================== -->

<section class="single-page-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2>Portfolio</h2>
			<ol class="breadcrumb header-bradcrumb">
				<?php if(function_exists('mj_wp_breadcrumb')): mj_wp_breadcrumb(); endif;?>
				</ol>
			</div>
		</div>
	</div>
</section>



<!-- Start Portfolio Section
		=========================================== -->
		
		<section class="portfolio section-sm" id="portfolio">
			<div class="container-fluid">
				<div class="row " >
					<div class="col-lg-12">
					
						<!-- section title -->
						<div class="title text-center">
							<h2><?php echo cs_get_option('portfolio_title');?></h2>
							<p><?php echo cs_get_option('portfolio_subtitle');?></p>
							<div class="border"></div>
						</div>
						<!-- /section title -->

						<div class="portfolio-filter">
							<button type="button" data-filter="all">All</button>
							
							  <?php
	
		                      $all_terms=get_terms('portfolio_category',array(
			                       'hide_empty' => false
			                    ));
			                 foreach($all_terms as $single_trem){ ?>
		                        <button type="button" data-filter=".<?php echo $single_trem->slug;?>"><?php echo $single_trem->name;?></button>
			           <?php   }
		                   ?>
						</div>
					
						<div class="portfolio-items-wrapper">
							<div class="row">
						   <?php 
	                            $portfolio= new Wp_Query(array(
	                              'post_type'  => 'portfolio',
	                              'posts-per_page' => -1,
	                            ));
	                          if($portfolio->have_posts()) :
	                          	while($portfolio->have_posts()) : $portfolio->the_post(); ?>
	                           <?php $portfolio_img=get_post_meta(get_the_ID(),'_portfolio_portfolio_img',true)?> 
	                            <?php $portfolio_title=get_post_meta(get_the_ID(),'_portfolio_portfolio_title',true)?>
	                            <?php $post_terms=get_the_terms(get_the_ID(),'portfolio_category');?>
	                             <div class="col-md-3 col-sm-6 col-xs-6 mix <?php foreach($post_terms as $tearn_val) { echo $tearn_val->slug; }?>" >
							    	<div class="portfolio-block">
							    		<img class="img-responsive" src="<?php echo $portfolio_img;?>" alt="">
							    		<div class="caption">
							    			<a class="search-icon" href="<?php echo $portfolio_img;?>" data-lightbox="image-1">
							    				<i class="tf-ion-ios-search-strong"></i>
								    		</a>
							    			<h4><a href=""><?php echo $portfolio_title?></a></h4>
							    		</div>
							    	</div>
							    </div>
						<?php endwhile; endif;?>
							</div>
						</div>
						
					</div> <!-- /end col-lg-12 -->
				</div> <!-- end row -->
			</div>	<!-- end container -->
		</section>   <!-- End section -->

	<section class="buy-pro" style="padding: 100px 0;">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
					<iframe src="<?php echo cs_get_option('video_source')?>" width="100%" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>	
				
			</div>
		</div>
	</div>
</section>
<?php get_footer();?>