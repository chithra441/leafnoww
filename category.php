<div class="single category">			
	<ul class="list-unstyled">
		<li><span style="font-size:25px;font-weight:bold;">Categories</span> <span class="pull-right"><span style="font-size:20px;font-weight:bold;">Topics / Posts</span></span></li>
		<?php
		$result = $categories->getCategoryList();
		while ($category = $result->fetch_assoc()) {
			$categories->category_id = $category['category_id'];
			$totalTopic = $categories->getCategoryTopicsCount();
			$totalPosts = $categories->getCategoryPostsCount();
		?>
		<li><a href="category.php?category_id=<?php echo $category['category_id'];?>" title=""><?php echo $category['name']; ?> <span class="pull-right"><?php echo $totalTopic; ?> / <?php echo $totalPosts; ?></span></a></li>			
		<?php } ?>
	</ul>
</div>
