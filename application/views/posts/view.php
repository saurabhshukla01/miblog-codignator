<section class="jumbotron py-2">
   <h2 class="text-center pb-2 text-primary font-weight-bold">View Single Post Blog Page</h2>
   <div class="container col-md-8 text-dark border p-2 m-auto">
		<h4 class="text-danger p-2 font-weight-bold"> <?php echo $post['title']; ?> </h2>
		<img class="card-img-top" src="<?php echo base_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>"
			alt="post_image" style="max_width=500;max_height=500;">
		<small class="text-primary font-weight-bold m-auto"> Posted on : <?php echo $post['created_at']; ?>
		in <strong class="text-danger"><?php echo $categories['category_name']; ?></strong>
		</small>
		<p><?php echo $post['body']; ?></p>
   	    <hr>
   	    <div class="d-flex">
			<a class="btn btn-primary btn-sm p-2 m-2 pull-left" href="edit/<?php echo $post['slug']; ?>">Update</a>
			<?php echo form_open('posts/delete/'.$post['id']); ?>
				<button type="submit" class="btn btn-danger btn-sm p-2 m-2 pull-right">Delete</button>
			</form>
		</div>
   </div>
</section>
