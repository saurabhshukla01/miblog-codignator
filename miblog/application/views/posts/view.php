<section class="jumbotron py-2">
   <h2 class="text-center pb-2 text-primary font-weight-bold">View Single Post Blog Page</h2>
   <div class="container col-md-8 text-dark border p-2 m-auto">
		<h4 class="text-danger p-2 font-weight-bold"> <?php echo $post['title']; ?> </h2>
		<img class="card-img-top" src="<?php echo base_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>"
			alt="post_image">
		<small class="text-primary font-weight-bold m-auto"> Posted on : <?php echo $post['created_at']; ?>
		in <strong class="text-danger"><?php echo $categories['category_name']; ?></strong>
		</small>
		<p><?php echo $post['body']; ?></p>
		<?php if($this->session->userdata('user_id') == $post['user_id']): ?>
   	    <hr>
   	    <div class="d-flex">
			<a class="btn btn-primary btn-sm p-2 m-2 pull-left" href="edit/<?php echo $post['slug']; ?>">Update</a>
			<?php echo form_open('posts/delete/'.$post['id']); ?>
				<button type="submit" class="btn btn-danger btn-sm p-2 m-2 pull-right">Delete</button>
			</form>
		</div>
		<?php endif; ?>
		<hr>
		<div class="pb-4 mt-4">
			<h3>Comments</h3>
			<div class="alert alert-success">
				<?php if($comments) : ?>
					<?php foreach($comments as $comment) : ?>
						<div class="well">
							<h6><?php echo $comment['body']; ?> [by <strong><?php echo $comment['name']; ?></strong>]</h6>
						</div>
					<?php endforeach; ?>
				<?php else : ?>
					<p>No Comments To Display</p>
				<?php endif; ?>
			</div>
			<hr>
			<h3> Add Comment </h3>
			<div class="alert alert-danger" role="alert">
		  		<span class="p-2 m-auto">
		  		 	<button type="button" class="close" data-dismiss="alert">x</button>
		  		 	<?php echo validation_errors(); ?>
		  		</span>
			</div>
			<?php echo form_open('comments/create/'.$post['id']); ?>
			  <div class="form-group">
				<label>Name</label>
				<input type="text" class="form-control" name="name">
			  </div>
			  <div class="form-group">
				<label>Email</label>
				<input type="email" class="form-control" name="email">
			  </div>
			  <div class="form-group">
				<label>Body</label>
				<textarea class="form-control" name="body" placeholder="Add Body"> </textarea>
			  </div>
			  <input type="hidden" class="form-control" name="slug" value="<?php echo $post['slug']; ?>">
			  <button type="submit" class="btn btn-primary">Submit</button>
		  </form>
		</div>
   </div>
</section>
