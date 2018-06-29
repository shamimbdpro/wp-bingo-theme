


<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
<head>
  <meta http-equiv="Content-Type" content="<?php bloginfo('charset')?>">
  <meta name="description" content="Bingo One page parallax responsive HTML Template ">
  
  <meta name="author" content="Themefisher.com">

  <title><?php bloginfo('title')?></title>

<!-- Mobile Specific Meta
  ================================================== -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png" />
  

<?php wp_head();?>
</head>

<body id="body">
<?php if(cs_get_option('preloader')) : ?>
 <!--
  Start Preloader
  ==================================== -->
  <div id="preloader">
    <div class='preloader'>
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <span></span>
    </div>
  </div>  
  <!--
  End Preloader
  ==================================== -->

<?php endif;?>


  

<!--
Fixed Navigation
==================================== -->
<header class="navigation navbar navbar-fixed-top">
   <div class="container">
      <div class="navbar-header">
         <!-- responsive nav button -->
         <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
         <span class="sr-only">Toggle navigation</span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         </button>
         <!-- /responsive nav button -->
         <!-- logo -->
         <?php 
         $logoA=wp_get_attachment_image_src(cs_get_option('logo_image'),'full');
         $logob=wp_get_attachment_image_src(cs_get_option('logo_image1'),'full');
   
         ?>
         <a class="navbar-brand logo" href="<?php bloginfo('home')?>">
            <?php if(!empty($logoA) || empty($logob)) : ?>
            <img class="logo-white" src="<?php echo $logoA[0]; ?>" alt="logo" />
         <img class="logo-default" src="<?php echo $logob[0]; ?>" alt="logo" />
         <?php else : ?>
            <h1><?php echo cs_get_option('logo_text');?></h1>
         <?php endif;?>

         </a>
         <!-- /logo -->
      </div>
      <!-- main nav -->
      <nav class="collapse navbar-collapse navbar-right">
         <?php wp_nav_menu([
             'theme_location' => 'mainmenu',
              'menu_class'    => 'nav navbar-nav menu',
              'menu_id'       =>   'nav',
              'container'     => 'ul'
         	])?>
      </nav>
      <!-- /main nav -->
   </div>
</header>