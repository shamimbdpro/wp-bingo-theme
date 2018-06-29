<?php if(cs_get_option('widget_switcher')==true) : ?>
<footer id="footer" class="bg-one">
    <style type="text/css">
      .top-footer .widgettitle{
          font-size: 16px !important;
          line-height: 1.5 !important;
          color: #fff !important;
          font-weight: 400 !important;
          text-transform: uppercase !important;
          letter-spacing: 1px !important;
        }
       .widget {
        list-style: none
       }

    </style>
  <div class="top-footer">
    <div class="container">
      <div class="row">
        <div class="col-sm-3 col-md-3 col-lg-3">
          <?php if(!dynamic_sidebar('footer_widget_first_col')) : 
               echo "no sidebar";
             endif;  
          ?>
      
        </div>
        <!-- End of .col-sm-3 -->
          
        <div class="col-sm-3 col-md-3 col-lg-3">
             <?php if(!dynamic_sidebar('footer_widget_second_col')) : 
               echo "no sidebar";
             endif;  
          ?>
       
        </div>
        <!-- End of .col-sm-3 -->

        <div class="col-sm-3 col-md-3 col-lg-3">
             <?php if(!dynamic_sidebar('footer_widget_third_col')) : 
               echo "no sidebar";
             endif;  
          ?>
     
        </div>
        <!-- End of .col-sm-3 -->

        <div class="col-sm-3 col-md-3 col-lg-3">
             <?php if(!dynamic_sidebar('footer_widget_four_col')) : 
               echo "no sidebar";
             endif;  
          ?>
        </div>
        <!-- End of .col-sm-3 -->

      </div>
    </div> <!-- end container -->
  </div>
<?php endif;?>


  