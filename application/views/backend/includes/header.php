<nav class="main-header navbar navbar-expand navbar-white navbar-light">
	<!-- Left navbar links -->
	<ul class="navbar-nav">
		<li class="nav-item">
			<a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
		</li>
	</ul>

	<!-- Right navbar links -->
	<ul class="navbar-nav ml-auto">
		<!-- User Dropdown Menu -->
		<li class="dropdown user user-menu">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">
				<?php /*if($image['emp_image'] === 'NULL') { */?>
				<img src="<?= base_url()?>backend_assets/dist/img/user2-160x160.jpg" class="user-image" alt="<?= $this->session->userdata['name']?>" >
				<?php /*} else { */?>
				<!--<img src="<?/*= base_url()*/?>uploads/employees_images/<?/*= $image['emp_image']*/?>" class="user-image" alt="<?/*= $this->session->userdata['name']*/?>" >-->
				<?php /*} */?>
				<span class="hidden-xs"><?= $this->session->userdata['name']?></span>
			</a>
			<ul class="dropdown-menu animated fadeIn">
				<!-- User image -->
				<li class="user-header">
					<img src="<?= base_url()?>backend_assets/dist/img/user2-160x160.jpg" class="img-circle" alt="<?= $this->session->userdata['name']?>" >
					<p>
						<?= $this->session->userdata['name']?>
						<small>Member since <?= date('l, j-F-Y',strtotime($this->session->userdata['added_at']))?></small>
					</p>
				</li>
				<!-- Menu Body -->
				<!-- Menu Footer-->
				<li class="user-footer">
					<div align="center">
						<a href="<?= base_url('Employee/profile')?>" class="btn btn-default btn-flat">Profile</a>
						<a href="<?= base_url().'Dashboard/logout'; ?>" class="btn btn-default btn-flat">Sign out</a>
					</div>
				</li>
			</ul>
		</li>
	</ul>
</nav>
