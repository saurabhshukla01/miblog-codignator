<?php echo validation_errors(); ?>
<section class="jumbotron py-2">
   <h2 class="text-center pb-2 text-primary font-weight-bold">Create Single Post Blog Page</h2>
   <div class="container col-md-10 p-4 text-dark font-weight-bold">
      <?php echo form_open('posts/create'); ?>
		  <div class="form-group">
			<label>Title</label>
			<input type="text" class="form-control" name="title">
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
			<textarea id="editor1" class="form-control" name="body" placeholder="Add Body"> </textarea>
		  </div>
		  <button type="submit" class="btn btn-primary">Submit</button>
	  </form>
   </div>
</section>


