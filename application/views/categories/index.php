<section class="jumbotron py-2 bg-light">
   <h2 class="text-center pb-2 text-primary font-weight-bold"><?php echo $title; ?></h2>
   <div class="container col-md-8 p-4 text-dark font-weight-bold">
		<ul class="list-group">
			<?php foreach($categories as $category) : ?>
				<li class="list-group-item">
					<a href="<?php echo base_url(); ?>categories/posts/<?php echo $category['category_id'];?>">
						<?php echo $category['category_name']; ?>
					</a>
				</li>
			<?php endforeach; ?>
		</ul>
	</div>
</section>

