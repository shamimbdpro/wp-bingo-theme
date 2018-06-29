 <?php /* template name: Service */ ?>
<?php get_header();?>
<!--
End Fixed Navigation
==================================== -->

<section class="single-page-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2>Our Services</h2>
				<ol class="breadcrumb header-bradcrumb">
				<?php if(function_exists('mj_wp_breadcrumb')): mj_wp_breadcrumb(); endif;?>
				</ol>
			</div>
		</div>
	</div>
</section>

<!-- Start Services Section
		==================================== -->
		
		<section class="services"  id="services">
			<div class="container">
				<div class="row">
					
					<!-- section title -->
					<div class="title text-center" >
						<h2 ><?php echo cs_get_option('service_title');?></h2>
						<p><?php echo cs_get_option('service_subtitle');?></p>
						<div class="border"></div>
					</div>
					<!-- /section title -->
					<?php $service=new Wp_Query(array(
                       'post_type' => 'service',
                       'posts_per_page' => -1,
                       'order'     => 'ASC'
					));

					if($service->have_posts()) :
               $x=0;
			   while($service->have_posts()) : $service->the_post(); 
			   	$x++;
               $service_icon=get_post_meta(get_the_ID(),'_service_service_icon',true);
               $conten=get_post_meta(get_the_ID(),'_service_service_des',true); ?>
             <!-- Single Service Item -->
					<div class="col-md-4 col-sm-6 col-xs-12  no-padding" >
						<?php if($x%2==0){ ?>
						<div class="service-block color-bg text-center">
					<?php	}else{ ?>
						<div class="service-block text-center">
					<?php }

						?>
							<div class="service-icon text-center">
								<i class="<?php echo $service_icon;?>"></i>
							</div>
							<h3><?php the_title();?></h3>
							<p><?php echo $conten;?></p>
						</div>
					</div>
                    <!-- End Single Service Item -->
 
                <?php endwhile; endif;?>
                   

						
				</div> 		<!-- End row -->
			</div>   	<!-- End container -->
		</section>   <!-- End section -->

<!--
Start Call To Action
==================================== -->

<!-- Start Team Skills
		=========================================== -->
		
		<section class="team-skills section-sm" id="skills">
			<div class="container">
				<div class="row">
				
					<!-- section title -->
					<div class="title text-center">
						<h2><?php echo cs_get_option('Skill_title')?></h2>
						<p><?php echo cs_get_option('Skill_subtitle')?></p>
						<div class="border"></div>
					</div>
					<!-- /section title -->
					
					<div class="col-md-5">
						<div class="team-skills-content">
							<h2><?php echo cs_get_option('descript_heading');?></h2>
							<p><?php echo cs_get_option('service_des_text');?></p>
							<a href="<?php echo cs_get_option('service_des_link');?>" class="btn btn-main mt-20">Contact Us</a>
						</div>
					</div>
					<div class="col-md-6 col-md-offset-1">
						<div class="progress-block">
							<ul>
								 <?php $service_skill=cs_get_option('skill_lavel')?>
								 <?php foreach($service_skill as $skill_val) : ?>
								<li>
									<span><?php echo $skill_val['Skill_name']?></span>
									<div class="progress">
										<div class="progress-bar" style="width:<?php echo $skill_val['Skill_parsent']?>;">
									    </div>
									</div>
								</li>
							<?php endforeach;?>
				
							</ul>
							
						</div>
					</div>
				</div>  		<!-- End row -->
				<div class="row">
					<div class="col-md-12">
						<div id="clients-slider" class="clients-logo-slider">

		            <?php $client_img=cs_get_option('client_img')?>
					   <?php foreach($client_img as $client_val) : ?>
							<img src="<?php echo wp_get_attachment_image_src($client_val['Client_Gellery'],'full')[0]?>" alt="">
							<?php endforeach;?>
						</div>
						
					</div>
				</div>
			</div>   	<!-- End container -->
		</section>   <!-- End section -->

<!-- Start Pricing section
		=========================================== -->
	<section class="pricing-table " id="pricing">
		<div class="container">
			<div class="row">
				
				<!-- section title -->
			    <div class="title title-white text-center " >
		     	<h2><?php echo cs_get_option('pricing_title')?></h2>
			    <p><?php echo cs_get_option('Skill_subtitle')?></p>
			        <div class="border"></div>
			    </div>
			    <!-- /section title -->



			    <?php $package=cs_get_option('pricing_package')?>
			    <?php foreach($package as $package_val) : ?>
				
				<!-- single pricing table -->
				<div class="col-md-4 col-sm-6 col-xs-12" >
					<div class="pricing-item">
						
						<!-- plan name & value -->
						<div class="price-title">
							<h3><?php echo $package_val['Pricing_package_name']?></h3>
							<strong class="value"><?php echo $package_val['Pricing_package_price']?></strong>
							<p><?php echo $package_val['Pricing_package_title']?></p>
						</div>
						<!-- /plan name & value -->
						
						<!-- plan description -->
						<ul>
							<?php echo $package_val['Pricing_package_item']?>
						</ul>
						<!-- /plan description -->
						
						<!-- signup button -->
						<a class="btn btn-main" href="<?php echo $package_val['Pricing_package_signup']?>">Signup</a>
						<!-- /signup button -->
						
					</div>
				</div>
				<!-- end single pricing table -->

              <?php endforeach;?>
				
			</div>       <!-- End row -->
		</div>   	<!-- End container -->
	</section>   <!-- End section -->
		

  <?php echo do_shortcode('[bingo_contact]');?>
<?php echo do_shortcode('[bingo_tesimonial]');?>
<?php get_footer();?>