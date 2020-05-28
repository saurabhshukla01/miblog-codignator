<section class="jumbotron py-2 bg-light">
   <h2 class="text-center pb-2 text-primary font-weight-bold"><?php echo $title; ?></h2>
   <div class="container col-md-8 p-4 text-dark font-weight-bold">
		<ul class="list-group">
			<?php foreach($categories as $category) : ?>
				<li class="list-group-item d-flex">
					<a class="mr-2" href="<?php echo base_url(); ?>categories/posts/<?php echo $category['category_id'];?>">
						<?php echo $category['category_name']; ?>
					</a>
					<?php if($this->session->userdata('user_id') == $category['user_id']): ?>
						<form action="categories/delete/<?php echo $category['category_id']; ?>" method="POST">
							<input type="submit" class="btn-link text-danger bg-light" value="[X]" title="Delete category">
						</form>
					<?php endif; ?>
				</li>
			<?php endforeach; ?>
		</ul>
	</div>
</section>

