<!DOCTYPE html>
<html>

<!-- HEAD -->
<?php $this->load->view('backend/includes/head'); ?>
<!-- /HEAD-->

<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

	<!-- Navbar -->
	<?php $this->load->view('backend/includes/header'); ?>
	<!-- /.navbar -->

	<!-- Main Sidebar Container -->
	<?php $this->load->view('backend/includes/sidebar'); ?>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<div class="content-header">
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="card-primary">
							<div class="card-header">
								<a href="<?= base_url('dashboard')?>" class="card-title"><span class="nav-icon fas fa-th"></span> Dashboard / Menus Management</a>
							</div>
						</div>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</div>
		<!-- /.content-header -->

		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6  offset-md-3">
						<div class="card card-primary animated fadeIn">
							<div class="card-header">
								<h3 class="card-title"><span class="fa fa-edit"></span> Edit Menu</h3>
							</div>
							<!-- /.card-header -->
							<!-- form start -->
							<form class="form-horizontal" method="POST" id="update_menu">
								<div class="card-body">
									<div class="form-group row">
										<label for="Parent" class="col-sm-2 col-form-label">Parent</label>
										<div class="col-sm-10">
											<select class="form-control select2bs4" style="width: 100%;" name="parent" id="parent">
												<option value="0">Main</option>
												<?php for($i=0; $i<count($parents); $i++): ?>
													<option value="<?php echo $parents[$i]['id'] ?>" <?php if ($menu_item['parent'] == $parents[$i]['id']) {
														echo 'selected';
													} ?> ><?php echo $parents[$i]['name'] ?>
													</option>
												<?php endfor; ?>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label for="Name" class="col-sm-2 col-form-label">Name</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="name" id="name" value="<?= $menu_item['name']?>">
										</div>
									</div>
									<div class="form-group row">
										<label for="Class" class="col-sm-2 col-form-label">Class</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="class" id="class" value="<?= $menu_item['class']?>">
										</div>
									</div>
									<div class="form-group row">
										<label for="Url" class="col-sm-2 col-form-label">Url</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="url" id="url" value="<?= $menu_item['url']?>">
										</div>
									</div>
								</div>
								<input type="hidden" name="id" value="<?= $menu_item['id']; ?>">
								<!-- /.card-body -->
								<div class="card-footer" align="center">
									<button type="submit" class="btn btn-primary"><span class="fa fa-save"> Update</button>
								</div>
								<!-- /.card-footer -->
							</form>
							<!-- /form end -->
						</div>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->

	<!-- FOOTER -->
	<?php $this->load->view('backend/includes/footer'); ?>
	<!-- /FOOTER-->

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- SCRIPTS -->
<?php $this->load->view('backend/includes/scripts'); ?>
<!-- /SCRIPTS -->

<script type="text/javascript">
	$(document).ready(function () {
		$("#update_menu").on('submit', (function (e) {
			toastr.info("Your Request processing...");
			e.preventDefault();
			var fd = new FormData(this);
			$.ajax({
				url: '<?php echo base_url("Menus/save_admin_edit_menu") ?>',
				data: fd,
				type: "POST",
				contentType: false,
				processData: false,
				cache: false,
				success: function (res) {
					var res = $.parseJSON(res);
					if (res.msg_type === 'success') {
						toastr.success(res.message);
						setTimeout(function(){
							window.location = res.redirect_link;
						}, 2000);

					} else {
						$("#msg").html(res);
						toastr.error(res.message);
					}
				},
				error: function (xhr) {
					$("#msg").html("Error: - " + xhr.status + " " + xhr.statusText);
				}
			});
		}));
		$('.select2bs4').select2({
			theme: 'bootstrap4'
		});
	});
</script>

</body>
</html>
