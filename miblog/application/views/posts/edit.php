<section class="jumbotron py-2">
   <h2 class="text-center pb-2 text-primary font-weight-bold">Update Single Post Blog Page</h2>
   <div class="container col-md-10 p-4 text-dark font-weight-bold">
   	  <div class="alert alert-danger" role="alert">
  		 <span class="p-2 m-auto">
  		 	<button type="button" class="close" data-dismiss="alert">x</button>
  		 	<?php echo validation_errors(); ?>
  		 </span>
	  </div>
      <?php echo form_open('posts/update/'.$post['id']); ?>

		  <div class="form-group">
			<label>Title</label>
			<input type="text" class="form-control" name="title" value="<?php echo $post['title']; ?>">
		  </div>
		  <div class="form-group">
			<label>Category</label>
			<select name="category_id" class="form-control">
				<?php foreach($categories as $category): ?>
					<option value="<?php echo $category['category_id']; ?>"><?php echo $category['category_name']; ?></option>
				<?php endforeach; ?>
			</select>
		  </div>
		  <div class="form-group">
			<label>Body</label>
			<textarea id="editor1" class="form-control" name="body" placeholder="Add Body"> <?php echo $post['body']; ?> </textarea>
		  </div>
		  <input type="hidden" name="id" value="<?php $post['id']; ?>">
		  <button type="submit" class="btn btn-primary">Update</button>
	  </form>
   </div>
</section>
