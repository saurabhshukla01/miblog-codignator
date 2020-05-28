<div class="album py-2">
   <div class="container p-0">
   		<h2 class="text-center pb-2 text-primary font-weight-bold"> Posts Blog Pages </h2>
      	<?php foreach($posts as $post) : ?>
			 <div class="col-md-12 border p-4 pt-4 mt-4">
				<div class="row">
				   <img class="col-md-4" src="<?php echo base_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>"
						alt="post_image">
				   <div class="col-md-8 pull-right">
				   	  <h4 class="pb-2 text-danger"> <?php echo $post['title'];  ?> </h4>
					  <small class="text-primary font-weight-bold m-auto" > Publish Blog Post date : <?php echo $post['created_at'];  ?>
					  	in <strong class="text-danger"><?php echo $post['category_name']; ?></strong>
					  </small>
					  <p class="card-text"> <?php echo character_limiter($post['body'], 300) ?> </p>
					  <div class="btn-group">
						 <button type="button" class="btn btn-sm btn-info" onclick="window.location.href='<?php echo base_url() ?>posts/<?php echo $post['slug']; ?>'">Read more</button>
					  </div>
					  <small class="text-muted pull-right"><?php echo $post['created_at'];  ?></small>
					</div>
				</div>
			 </div>
         <?php endforeach; ?>
         <div class="mb-4 pb-4">
			 <div class="row pagination-links list-pagination float-right d-flex">
					<?php echo $this->pagination->create_links(); ?>
			 </div>
	     </div>
    </div>
</div>

