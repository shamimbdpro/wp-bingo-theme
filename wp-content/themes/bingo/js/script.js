                           

(function ($) { "use strict";

	// custom js

	$('.navbar-nav li ul').addClass('dropdown-menu');
	$('.navbar-nav li ul').removeClass('sub-menu');
	$('.navbar-nav li ul').parents('li').addClass('dropdown');
	/* ========================================================================= */
	/*	Page Preloader
	/* ========================================================================= */
	
	// window.load = function () {
	// 	document.getElementById('preloader').style.display = 'none';
	// }

	$(window).on("load",function(){
		$('#preloader').fadeOut('slow',function(){$(this).remove();});
	});


	/* ========================================================================= */
	/*	Portfolio Filtering Hook
	/* =========================================================================  */

	var portfolio_item = $('.portfolio-items-wrapper');
	if (portfolio_item.length) {
		var mixer = mixitup(portfolio_item);
	};


	
	/* ========================================================================= */
	/*	Testimonial Carousel
	/* =========================================================================  */
 
	//Init the slider
	$('.testimonial-slider').slick({
		infinite: true,
		arrows:false,
		autoplay: true,
  		autoplaySpeed: 2000
	});


	/* ========================================================================= */
	/*	Clients Slider Carousel
	/* =========================================================================  */
 
	//Init the slider
	$('.slider').slick({
		infinite: true,
		arrows:false,
		dots:true,
		autoplay: true,
  		autoplaySpeed: 2000,
  		slidesToShow: 1,
  		slidesToScroll: 1,
	});

	/* ========================================================================= */
	/*	Clients Slider Carousel
	/* =========================================================================  */
 
	//Init the slider
	$('.clients-logo-slider').slick({
		infinite: true,
		arrows:false,
		autoplay: true,
  		autoplaySpeed: 2000,
  		slidesToShow: 5,
  		slidesToScroll: 1,
	});




	/* ========================================================================= */
	/*	Company Slider Carousel
	/* =========================================================================  */
	$('.company-gallery').slick({
		infinite: true,
		arrows:false,
		autoplay: true,
  		autoplaySpeed: 2000,
  		slidesToShow: 5,
  		slidesToScroll: 1,
	});
	
	

/* ========================================================================= */
/*	On scroll fade/bounce effect
/* ========================================================================= */
	var scroll = new SmoothScroll('a[href*="#"]');
	
/* ========================================================================= */
	/*	Header Scroll Background Change
	/* ========================================================================= */	
	
$(window).scroll(function() {    
var scroll = $(window).scrollTop();
 //console.log(scroll);
if (scroll > 200) {
    //console.log('a');
    $(".navigation").addClass("sticky-header");
} else {
    //console.log('a');
    $(".navigation").removeClass("sticky-header");
}});


})(jQuery);



                            