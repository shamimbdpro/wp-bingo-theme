<?php get_header();?> 
<br />
<br /><br /><br />
                   
                  <?php 
                
                   if(have_posts()) :
                 while(have_posts()) : the_post();
            
  	  $post_image=wp_get_attachment_image_src(get_post_thumbnail_ID(get_the_ID()),'full');?>
  		 <div class="container" >
	  		 <div class="row align-self-center" >
		  		 <div class="col-md-10 col-sm-6 col-xs-12 clearfix col-md-offset-1" >
					<div class="post-item">
						<div class="media-wrapper">
							<img style="height:500px;width:100%" src="<?php echo esc_url($post_image[0])?>" alt="amazing caves coverimage" class="img-responsive">
						</div>
						
							<div class="content">
							<h3><?php the_title();?></h3>
							<p><?php  the_content();?></p>
						</div>
					  </div>						
					
				 <!-- comment area -->
                <?php if ( comments_open() || get_comments_number() ) :
					comments_template();
				endif; ?>
				<!-- end comment area -->
			</div>
		  </div>
			</div>
              <?php endwhile; endif; ?>

<style type="text/css"> 
/*#respond { } 
#reply-title { } 
#cancel-comment-reply-link { }
#commentform { } 
#author { } 
#email { } 
#url { } 
#comment 
#submit
.comment-notes { } 
.required { }
.comment-form-author { }
.comment-form-email { } 
.comment-form-url { }
.comment-form-comment { } 
.form-allowed-tags { } 
.form-submit*/

 #respond { 
background: #ececec;
    padding: 4px 5px 22px 34px
}
 
/* Highlight active form field */
 
#respond input[type=text], textarea {
  -webkit-transition: all 0.30s ease-in-out;
  -moz-transition: all 0.30s ease-in-out;
  -ms-transition: all 0.30s ease-in-out;
  -o-transition: all 0.30s ease-in-out;
  outline: none;
  padding: 3px 0px 3px 3px;
  margin: 5px 1px 3px 0px;
  border: 1px solid #DDDDDD;
}
  
  
#respond input[type=text]:focus, textarea:focus {
  box-shadow: 0 0 5px rgba(81, 203, 238, 1);
  margin: 5px 1px 3px 0px;
  border: 1px solid rgba(81, 203, 238, 1);
}


#author { 
font-family: Lobster, "Lobster 1.4", "Droid Sans", Arial;
font-size: 16px;
color:#1d1d1d; 
letter-spacing:.1em;
} 
 
#url  { 
color: #21759b;
font-family: "Luicida Console", "Courier New", "Courier", monospace; 
} 
#respond input[type=text], textarea{
	width:100%;
}

#submit {
font-family: Arial;
color: #ffffff;
font-size: 20px;
padding: 10px;
text-decoration: none;
box-shadow: 0px 1px 3px #666666;
-webkit-box-shadow: 0px 1px 3px #666666;
-moz-box-shadow: 0px 1px 3px #666666;
text-shadow: 1px 1px 3px #666666;
background: -webkit-gradient(linear, 0 0, 0 100%, from(#006ad4), to(#003366));
background: -moz-linear-gradient(top, #006ad4, #003366);
} 
 
#submit:hover {
  background: -webkit-gradient(linear, 0 0, 0 100%, from(#003366), to(#006ad4));
  background: -moz-linear-gradient(top, #003366, #006ad4)
}
#commentform{
	max-width:600px;
}
</style>
		
<?php get_footer();?>
