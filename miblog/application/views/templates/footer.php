<footer class="text-center text-white bg-dark p-4 pt-4 mt-4 section-bg">
      <div class="footer-top">
         <div class="row">
            <div class="col-lg-12 p-0">
               <div class="row">
                  <div class="col-sm-4">
                     <div class="footer-info">
                        <h3>MIBlog</h3>
                        <p>
                           Are you running out of blog post ideas? Not sure what <br>
                           type of blog posts you should write? Don’t worry. <br>
                           In this article, we will cover 73 different types <br>
                           of blog posts that are proven to work, so you will <br>
                           never run out of blog post ideas again.
                        </p>
                     </div>
                     <div class="footer-newsletter">
                        <h4>Our Newsletter</h4>
                        <p>To subscribe our newsletter, Enter your E-mail id.</p>
                        <form action="" method="POST">
                           <div class="form-group d-flex" id="signform">
                              <input class="form-control" name="signemail" id="signemail"  type="email" placeholder="Email Address">
                              <label class="error" for="name" id="signemail_error" style="display: none;">This field is required.</label>
                              <input type="submit" class="subscribe btn btn-primary" value="Subscribe">
                           </div>
                           <div class="form-group" id="sign_form"></div>
                        </form>
                     </div>
                  </div>
                  <div class="col-sm-4">
                     <div class="footer-links">
                        <h4>Useful Links</h4>
                           <ul>
                           <li><a href="<?php echo base_url(); ?>">Home</a></li>
                           <li><a href="<?php echo base_url(); ?>about">About us</a></li>
                           <li><a href="<?php echo base_url(); ?>privacy">Privacy policy</a></li>
                           </ul>
                     </div>
                  </div>
                  <div class="col-sm-4">
                     <div class="footer-links">
                        <h4>Contact Us</h4>
                        <p>
                           	  Pru Digital Media<br>
                              Noida One, Sector 62, Noida<br>
                              <strong>Phone:</strong> +1 5589 55488 55<br>
                              <strong>Email:</strong> miblog@blog.org<br>
                        </p>
                     </div>
                     <div class="social-links social-btn">
                        <a href="https://twitter.com/login" class="twitter" title="Twitter"><i class="fa fa-twitter"></i></a>
                        <a href="https://www.facebook.com/login" class="facebook" title="Facebook"><i class="fa fa-facebook"></i></a>
                        <a href="https://www.instagram.com/login/" class="instagram" title="Instagram"><i class="fa fa-instagram"></i></a>
                        <a href="https://www.linkedin.com/login" class="linkedin" title="linkedin"><i class="fa fa-linkedin"></i></a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="container">
         <div class="copyright text-center">
         	<p class="float-right">
         		<a id="back-to-top-button"></a>
      		</p>
            &copy; Copyright  <strong>New MIBlog site ? </strong>
            <small><a href="<?php echo base_url(); ?>" >MIBlog Home page</a></samll>&nbsp;All Rights Reserved 2020
         </div>
      </div>
   </footer>

<script>
   CKEDITOR.replace('editor1');
</script>
<script>
	$(function () {
		$(document).scroll(function () {
		  var $nav = $("#header");
		  $nav.toggleClass('header-scrolled', $(this).scrollTop() > $nav.height());
		});
	});

	var btn = $('#back-to-top-button');

	$(window).scroll(function() {
	if ($(window).scrollTop() > 300) {
	  btn.addClass('show');
	} else {
	  btn.removeClass('show');
	}
	});

	btn.on('click', function(e) {
		e.preventDefault();
		$('html, body').animate({scrollTop:0}, '300');
	});

</script>

</body>
</html>
