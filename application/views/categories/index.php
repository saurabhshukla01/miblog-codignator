<h2 class="text-center text-danger"><?php echo $title; ?></h2>
<ul class="list-group">
	<?php foreach($categories as $category) : ?>
		<li class="list-group-item">
			<a href="<?php echo base_url(); ?>categories/posts/<?php echo $category['category_id'];?>">
				<?php echo $category['category_name']; ?>
			</a>
		</li>
	<?php endforeach; ?>
</ul>

