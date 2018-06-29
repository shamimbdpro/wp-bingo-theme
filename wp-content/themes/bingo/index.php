 <?php /* Template Name: Home-page */ ?>
<?php get_header();?>
<!--
End Fixed Navigation
==================================== -->

	 <!--
Welcome Slider
==================================== -->
<section class="slider">
	 <?php 
      $slider= new WP_Query(array(
       	'post_type'	=> 'slider',
		'posts_per_page'	=> '5',
		'order_by'			=> 'menu_order',
		'order'				=> 'ASC'
      ));
       if($slider->have_posts()){
       	while($slider->have_posts()){
       		$slider->the_post();
       
       $image=wp_get_attachment_image_src(get_post_thumbnail_ID(get_the_ID()),'full');
       $slider_btn=get_post_meta( get_the_ID(),'_slider_slider_btn',true );
       $slider_btn2=get_post_meta( get_the_ID(),'_slider_slider_btn2',true );
       $slider_url=get_post_meta( get_the_ID(),'_slider_btn_url',true );
       $slider_url2=get_post_meta( get_the_ID(),'_slider_btn_url2',true );
       	?>
<div class="hero-area" style="background:url(<?php echo esc_url($image[0])?>)no-repeat scroll 0 0 /100% 100%">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="block">
					 <p><?php the_content();?></p>
						<ul class="list-inline wow fadeInUp" data-wow-duration=".5s" data-wow-delay=".7s">
							<li>
								<a data-scroll href="<?php echo $slider_url;?>" class="btn btn-main"><?php echo $slider_btn;?></a>		
							</li>
							<li>
								<a data-scroll href="<?php echo $slider_url2;?>" class="btn btn-transparent"><?php echo $slider_btn2;?></a>			
							</li>
						
						</ul>  
					</div>
				</div>
			</div>
		</div>
	</div>
       	
    <?php   	}
    wp_reset_query();
       }
	 ?>
	</section>

<!--
Start About Section
==================================== -->
<section class="service-2 section">
  <div class="container">
    <div class="row">

      <!-- section title -->
      <div class="title text-center"  >
        <h2><?php echo cs_get_option('Offer_heading_title');?></h2>
        <p><?php echo cs_get_option('Offer_heading_subtitle');?></p>
        <div class="border"></div>
      </div>
      <!-- /section title -->

      <div class="col-md-4 text-center">
        <img src="<?php echo wp_get_attachment_image_src(cs_get_option('we_offer_image'),'full')[0];?>" class="inline-block" alt="">
      </div>
      <div class="col-md-8">
        <div class="row text-center">
          <?php $offer_items_val=cs_get_option('We_offer_group');?>
            <?php foreach($offer_items_val as $offer_val): ?>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="service-item">
              <i class="<?php echo $offer_val['Offer_icon']?>"></i>
              <h4><?php echo $offer_val['Offer_icon'];?></h4>
              <p><?php echo $offer_val['Offer_icons_text'];?></p>
            </div>
          </div><!-- END COL -->
      <?php endforeach;?>
        </div>
      </div>
    </div>    <!-- End row -->
  </div>    <!-- End container -->
</section>   <!-- End section -->

<!--
Start About Section
==================================== -->
<section class="about-2 section" id="about">
	<div class="container">
		<div class="row">
		
			<!-- section title -->
			<div class="title text-center"  >
				<h2><?php echo cs_get_option('agency_title');?></h2>
				<p><?php echo cs_get_option('agency_subtitle')?></p>
				<div class="border"></div>
			</div>
			<!-- /section title -->

			<div class="col-md-6">
				<img src="<?php echo wp_get_attachment_image_src(cs_get_option('Agency_image'),'full')[0];?>" class="img-responsive" alt="">
			</div>
			<div class="col-md-6">
				<ul class="checklist">
					 <?php $agency_items_val=cs_get_option('Agency_group');?>
                  <?php foreach($agency_items_val as $agency_val): ?>
                    <li><?php echo $agency_val['agency_text'];?></li>
                   <?php endforeach;?>
                </ul>
				<a href="<?php echo cs_get_option('learn_more');?>" class="btn btn-main mt-20" target="_blank">Learn More</a>
			</div>
		</div> 		<!-- End row -->
	</div>   	<!-- End container -->
</section>   <!-- End section -->

<!--
Start Call To Action
==================================== -->
<?php echo do_shortcode('[bingo_tesimonial]');?>
<!--
		Start Blog Section
		=========================================== -->
				
	<section class="blog" id="blog">
		<div class="container">
			<div class="row">

				<!-- section title -->
				<div class="title text-center ">
					<h2><?php echo cs_get_option('blog_title')?></h2>
					<div class="border"></div>
					<p><?php echo cs_get_option('blog_subtitle');?></p>
				</div>
				<!-- /section title -->

                     
                  <?php 
                   $post1 = new WP_Query(array(
                     'post_type' => 'post',
                     'posts_per_page' => 3,
                     'order'        => 'ASC',
                   ));
                   if($post1->have_posts()) :

                   	while($post1->have_posts()) : $post1->the_post(); ?>
                    <?php 
       $post_image=wp_get_attachment_image_src(get_post_thumbnail_ID(get_the_ID()),'full');?>
                   		<!-- single blog post -->
				 <article class="col-md-4 col-sm-6 col-xs-12 clearfix " >
					<div class="post-item">
						<div class="media-wrapper">
							<img src="<?php echo esc_url($post_image[0])?>" alt="amazing caves coverimage" class="img-responsive">
						</div>
						
						<div class="content">
							<h3><a href="<?php the_permalink();?>"><?php the_title();?></a></h3>
							<p><?php echo wp_trim_words( get_the_content(), 24, '' );?></p>
							<a class="btn btn-main" href="<?php the_permalink();?>">Read more</a>
						</div>
					</div>						
				</article>
				<!-- /single blog post -->
              
              <?php endwhile; endif; ?>
		


			</div> <!-- end row -->
		</div> <!-- end container -->
	</section> <!-- end section -->

<?php get_footer();?>