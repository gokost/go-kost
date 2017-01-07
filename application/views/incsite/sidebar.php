<div class="left-sidebar">
	<div class="brands_products"><!--brands_products-->
		<h2>Kategori</h2>
		<div class="brands-name">
			<ul class="nav nav-pills nav-stacked">
				<?php foreach($kategoriq as $row) { ?>
				<li><a href="<?php echo base_url()."site/kategori/".$row['id_kat']; ?>"> <span class="pull-right"></span><?php echo $row['kategori']; ?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div><!--/brands_products-->

	<div class="brands_products"><!--brands_products-->
		<h2>Lokasi</h2>
		<div class="brands-name">
			<ul class="nav nav-pills nav-stacked">
				<?php foreach($lokasi as $row) { ?>
				<li><a href="<?php echo base_url()."site/lokasi/".$row['id_lokasi']; ?>"> <span class="pull-right"></span><?php echo $row['lokasi']; ?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div><!--/brands_products-->

	<div class="shipping text-center"><!--shipping-->
		<img src="<?php echo base_url(); ?>assets/site/images/home/shipping.jpg" alt="" />
	</div><!--/shipping-->
</div>