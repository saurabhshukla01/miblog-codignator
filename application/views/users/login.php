<section class="jumbotron py-5">
   <h2 class="text-center pb-2 text-primary font-weight-bold">Sing In</h2>
   <div class="container col-md-8 p-4  text-dark font-weight-bold">
   	  <div class="alert alert-danger" role="alert">
  		 <span class="p-2 m-auto">
  		 	<button type="button" class="close" data-dismiss="alert">x</button>
  		 	<?php echo validation_errors(); ?>
  		 </span>
	  </div>
		<?php echo form_open('users/login'); ?>
			<div class="form-group">
				<input type="text" name="username" class="form-control" placeholder="Enter Username" required autofocus>
			</div>
			<div class="form-group">
				<input type="password" name="password" class="form-control" placeholder="Enter Password" required autofocus>
			</div>
			<button type="submit" class="btn btn-primary btn-block">Login</button>
		<?php echo form_close(); ?>
	</div>
</section>
