
            <!-- widget -->

  <?php include_once('widget.php');?>

    <div class="footer-bottom">
      <?php $footer_block=cs_get_option('footer_text');?> 
      <?php echo do_shortcode($footer_block);?>
    
  </div>
</footer> <!-- end footer -->
 <?php wp_footer();?>
</body>
</html>
