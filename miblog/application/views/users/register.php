<section class="jumbotron py-2">
   <h2 class="text-center pb-2 text-primary font-weight-bold">Sing Up</h2>
   <div class="container col-md-10 p-4 text-dark font-weight-bold">
   	  <div class="alert alert-danger" role="alert">
  		 <span class="p-2 m-auto">
  		 	<button type="button" class="close" data-dismiss="alert">x</button>
  		 	<?php echo validation_errors(); ?>
  		 </span>
	  </div>
      <?php echo form_open_multipart('users/register'); ?>
		  <div class="form-group">
			<label>Name</label>
			<input type="text" class="form-control" name="name" Placehome="Enter Name">
		  </div>
		  <div class="form-group">
			<label>Zipcode</label>
			<input type="text" class="form-control" name="zipcode" Placehome="Enter Zipcode">
		  </div>
		  <div class="form-group">
			<label>Username</label>
			<input type="text" class="form-control" name="username" Placehome="Enter Username">
		  </div>
		  <div class="form-group">
			<label>Email</label>
			<input type="email" class="form-control" name="email" Placehome="Enter Email">
		  </div>
		  <div class="form-group">
			<label>Password</label>
			<input type="password" class="form-control" name="password" Placehome="Enter Password">
		  </div>
		  <div class="form-group">
			<label>Confirm Password</label>
			<input type="text" class="form-control" name="password2" Placehome="Enter Confirm Password">
		  </div>
		  <button type="submit" class="btn btn-primary">Submit</button>
	  <?php echo form_close(); ?>
   </div>
</section>


