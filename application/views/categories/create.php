<section class="jumbotron py-2">
   <h2 class="text-center pb-2 text-primary font-weight-bold"><?php echo $title; ?></h2>
   <div class="container col-md-10 p-4 text-dark font-weight-bold">
   	  <div class="alert alert-danger" role="alert">
  		 <span class="p-2 m-auto">
  		 	<button type="button" class="close" data-dismiss="alert">x</button>
  		 	<?php echo validation_errors(); ?>
  		 </span>
	  </div>
      <?php echo form_open_multipart('categories/create'); ?>
		  <div class="form-group">
			<label>Category Name</label>
			<input type="text" class="form-control" name="category_name" Placeholder="Enter Category Name">
		  </div>
		  <button type="submit" class="btn btn-primary">Submit</button>
	  </form>
   </div>
</section>


