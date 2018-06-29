 <?php /* template name: Contact */ ?>
<?php get_header();?>
<!--
End Fixed Navigation
==================================== -->

<section class="single-page-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2>Contact Us</h2>
				<ol class="breadcrumb header-bradcrumb">
				  <li><a href="index.html">Home</a></li>
				  <li class="active">Contact Us</li>
				</ol>
			</div>
		</div>
	</div>
</section>

<!-- Srart Contact Us
		=========================================== -->		
	<section class="contact-us" id="contact">
		<div class="container">
			<div class="row">
				
				<!-- section title -->
				<div class="title text-center" >
					<h2><?php echo cs_get_option('Contact_title');?></h2>
					<p><?php echo cs_get_option('Contact_subtitle');?></p>
					<div class="border"></div>
				</div>
				<!-- /section title -->
				
				<!-- Contact Details -->
				<div class="contact-details col-md-6 " >
					<h3><?php echo cs_get_option('Contact_title');?></h3>
					<p><?php echo cs_get_option('Contact_dsubtitle');?></p>
					<ul class="contact-short-info" >
					   <?php echo cs_get_option('Contact_description');?>
					</ul>
					<!-- Footer Social Links -->
					<div class="social-icon">
						<ul>
							<?php $socal=cs_get_option('contact_d');
							 foreach($socal as $socal_val) : ?>
							  <li><a href="<?php echo $socal_val['Enter_Social_Link'];?>"><i class="<?php echo $socal_val['social_name']?>"></i></a></li>

						<?php endforeach;?>
						</ul>
					</div>
					<!--/. End Footer Social Links -->
				</div>
				<!-- / End Contact Details -->
					
				<!-- Contact Form -->
				<div class="contact-form col-md-6 " >
									
                  <?php echo do_shortcode('[contact-form-7 id="164" title="contact form"]') ?>	
					
				</div>
				<!-- ./End Contact Form -->
			
			</div> <!-- end row -->
		</div> <!-- end container -->
	</section> <!-- end section -->
<?php get_footer();?>