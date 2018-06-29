 <?php /* template name: About */ ?>
<?php get_header();?>
<!--
End Fixed Navigation
==================================== -->

<section class="single-page-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2>About Us</h2>

				  <ol class="breadcrumb header-bradcrumb">
				<?php if(function_exists('mj_wp_breadcrumb')): mj_wp_breadcrumb(); endif;?>
				</ol>
				
			</div>
		</div>
	</div>
</section>

<section class="about-shot-info section-sm">
	<div class="container">
		<div class="row">
			<div class="col-md-6 mt-20">
				<h2><?php echo cs_get_option('about_first_section_title');?></h2>
				<p><?php echo cs_get_option('about_first_section_detials');?></p>
			</div>
			<div class="col-md-6">
				<img class="img-responsive" src="<?php echo wp_get_attachment_image_src(cs_get_option('about_first_section_imae'),'full')[0]?>" alt="">
			</div>
		</div>
	</div>
</section>

<section class="company-mission section-sm bg-gray">
	<div class="container">
		<div class="row">
			<?php $missions=cs_get_option('mission_group');?>
			<?php foreach($missions as $mission) : ?>
			<div class="col-md-6">
				<h3><?php echo $mission['Mission']?></h3>
				<p><?php echo $mission['mission_text']?></p>
				<img src="<?php echo wp_get_attachment_image_src($mission['Misson_image'],'full')[0]?>" alt="" class="img-responsive mt-30">
			</div>
		<?php endforeach;?>
		</div>
	</div>
</section>

<section class="promo-video section-sm">
	<div class="container">
		<div class="row">
			<!-- section title -->
			<div class="title text-center" >
				<h2><?php echo cs_get_option('Video_title')?></h2>
				<p><?php echo cs_get_option('video_details')?></p>
				<div class="border"></div>
			</div>
			<!-- /section title -->
			<div class="col-md-8 col-md-offset-2">
				<iframe src="<?php echo cs_get_option('video_source')?>" width="100%" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
			</div>
		</div>
	</div>
</section>

<!--
Start Call To Action
==================================== -->
<section class="call-to-action-2 section">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<h2><?php echo cs_get_option('video_bottom_section_details')?></h2>
			</div>
		</div> 		<!-- End row -->
	</div>   	<!-- End container -->
</section>   <!-- End section -->

<section class="section grallery">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="title text-center">
					<h2><?php echo cs_get_option('gellery_title')?></h2>
					<p><?php echo cs_get_option('Gallery_details')?></p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="company-gallery">
					<?php $gellers=cs_get_option('About_gellery_img');?>
			<?php foreach($gellers as $geller_value) : ?>
		       <img src="<?php echo wp_get_attachment_image_src($geller_value['Image_gellery'],'full')[0]?>" alt="">
		  <?php endforeach;?>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Start Our Team
		=========================================== -->
	<section class="team" id="team">
		<div class="container">
			<div class="row">
			
				<!-- section title -->
				<div class="title text-center " >
				<h2><?php echo cs_get_option('Team_title')?></h2>
				<p><?php echo cs_get_option('Team_details')?></p>
					<div class="border"></div>
				</div>
				<!-- /section title -->
				<?php $teams=cs_get_option('Team_img');?>
				<?php foreach($teams as $team_val) : ?>
				<!-- team member -->
				<div class="col-md-4 col-sm-6 " >
	               <div class="team-member text-center">
						<div class="member-photo">
							<!-- member photo -->
							<img class="img-responsive" src="<?php echo wp_get_attachment_image_src($team_val['Team_image'],'full')[0]?>" alt="Meghna">
							<!-- /member photo -->
							
							<!-- member social profile -->
							<div class="mask">
								<ul class="clearfix">
									<li><a target="_blank"> href="<?php echo $team_val['facebook']?>"><i class="tf-ion-social-facebook"></i></a></li>
									<li><a target="_blank" href="<?php echo $team_val['twitter']?>"><i class="tf-ion-social-twitter"></i></a></li>
									<li><a target="_blank" href="<?php echo $team_val['google']?>"><i class="tf-ion-social-google-outline"></i></a></li>
									<li><a target="_blank" href="<?php echo $team_val['dribble']?>"><i class="tf-ion-social-dribbble"></i></a></li>					
								</ul>
							</div>
							<!-- /member social profile -->
						</div>
						
						<!-- member name & designation -->
						<div class="member-content">
							<h3><?php echo $team_val['team_name']?></h3>
							<span><?php echo $team_val['team_profession']?></span>
							<p><?php echo $team_val['team_info']?></p>
						</div>
						<!-- /member name & designation -->
					   
	               </div>
	            </div>
				<!-- end team member -->
				<?php endforeach ?>
		
			</div>  	<!-- End row -->
		</div>   	<!-- End container -->
	</section>   <!-- End section -->

<!--
		Start Counter Section
		==================================== -->

  <?php echo do_shortcode('[bingo_contact]');?>
  <?php echo do_shortcode('[bingo_counter]');?>

<?php get_footer();?>