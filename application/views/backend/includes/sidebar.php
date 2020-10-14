<aside class="main-sidebar sidebar-dark-primary elevation-4">
	<!-- Brand Logo -->
	<a href="index3.html" class="brand-link">
		<img src="<?= base_url()?>backend_assets/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
			 style="opacity: .8">
		<span class="brand-text font-weight-light">AdminLTE 3</span>
	</a>

	<!-- Sidebar -->
	<div class="sidebar">
		<!-- Sidebar user panel (optional) -->
		<div class="user-panel mt-3 pb-3 mb-3 d-flex">
			<div class="image">
				<img src="<?= base_url()?>backend_assets/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
			</div>
			<div class="info">
				<a href="#" class="d-block">Alexander Pierce</a>
			</div>
		</div>
		<div class="user-panel mt-3 pb-3 mb-3 d-flex">
			<form class="form-inline ml-3">
				<div class="input-group input-group-sm">
					<input class="form-control form-control-navbar filtertxt" type="text" placeholder="Search" aria-label="Search">
					<div class="input-group-append">
						<button class="btn btn-navbar" type="submit">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
			</form>
		</div>
		<!-- Sidebar Menu -->
		<nav class="mt-2">
			<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false" id="social-sidebar-menu">
				<!-- Add icons to the links using the .nav-icon class
					 with font-awesome or any other icon font library -->
				<li class="nav-header">Main Navigation</li>
				<li class="nav-item">
					<a href="<?= base_url('dashboard')?>" class="nav-link">
						<i class="nav-icon fas fa-th"></i>
						<p>
							Dashboard
						</p>
					</a>
				</li>
				<?php  for ($i = 0; $i < count($menu); $i++): ?>
				<li class="nav-item <?php if (!empty($menu[$i]['child'])) { echo 'has-treeview'; } ?>">
					<a href="#" class="nav-link">
						<i class="nav-icon <?php echo $menu[$i]['class'] ?>"></i>
						<p>
							<?= $menu[$i]['name'] ?>
							<?php if (!empty($menu[$i]['child'])): ?>
							<i class="fas fa-angle-left right"></i>
							<?php endif; ?>
						</p>
					</a>
					<?php if (count($menu[$i]['child']) > 0): ?>
					<ul class="nav nav-treeview">
						<?php for ($j = 0; $j < count($menu[$i]['child']); $j++): ?>
						<li class="nav-item">
							<a href="<?= base_url() . $menu[$i]['child'][$j]['url'] ?>" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p><?= $menu[$i]['child'][$j]['name'] ?></p>
							</a>
						</li>
						<?php endfor; ?>
					</ul>
					<?php endif; ?>
				</li>
				<?php endfor; ?>
				<li class="nav-header">Static Menus</li>
				<li class="nav-item has-treeview">
					<a href="#" class="nav-link">
						<i class="nav-icon fa fa-cog"></i>
						<p>
							Menus Management
							<i class="fas fa-angle-left right"></i>
						</p>
					</a>
					<ul class="nav nav-treeview">
						<li class="nav-item">
							<a href="<?= base_url('menus/add')?>" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Add menu</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="<?= base_url('menus/manage')?>" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Manage menus</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="<?= base_url('Menus/menus_routes')?>" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Menu routes</p>
							</a>
						</li>
					</ul>
				</li>
				<li class="nav-item has-treeview">
					<a href="#" class="nav-link">
						<i class="nav-icon fa fa-cog"></i>
						<p>
							Activity Logs
							<i class="fas fa-angle-left right"></i>
						</p>
					</a>
					<ul class="nav nav-treeview">
						<li class="nav-item">
							<a href="<?= base_url('activity_logs')?>" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>View activity logs</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="<?= base_url('activity_logs/custom_search')?>" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Custom search logs</p>
							</a>
						</li>
					</ul>
				</li>
				<li class="nav-item has-treeview">
					<a href="#" class="nav-link">
						<i class="nav-icon fa fa-cog"></i>
						<p>
							Groups & Permission
							<i class="fas fa-angle-left right"></i>
						</p>
					</a>
					<ul class="nav nav-treeview">
						<li class="nav-item">
							<a href="<?= base_url('Users/add_group'); ?>" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Add Group</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="<?= base_url('Users/manage_user_groups')?>" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Manage permission</p>
							</a>
						</li>
					</ul>
				</li>
				<li class="nav-item has-treeview">
					<a href="#" class="nav-link">
						<i class="nav-icon fa fa-cog"></i>
						<p>
							System settings
							<i class="fas fa-angle-left right"></i>
						</p>
					</a>
					<ul class="nav nav-treeview">
						<li class="nav-item">
							<a href="<?= base_url('Settings/company_info')?>" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Company information</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Backup Database</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Truncate Data</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="<?= base_url('Settings/smtp_configuration')?>" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Smtp configuration</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="<?= base_url('Settings/login_settings')?>" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Login settings</p>
							</a>
						</li>
					</ul>
				</li>
			</ul>
		</nav>
		<!-- /.sidebar-menu -->
	</div>
	<!-- /.sidebar -->
</aside>
